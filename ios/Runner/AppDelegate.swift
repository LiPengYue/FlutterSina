import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate:
FlutterAppDelegate,
FlutterStreamHandler
{
    
    private var flutterMethodChannel: FlutterMethodChannel?
    private var flutterEventChannel: FlutterEventChannel?
    private var eventChannelSink: FlutterEventSink?
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    GeneratedPluginRegistrant.register(with: self)
    let flutterVc = window.rootViewController as? FlutterViewController
    if let vc = flutterVc {
        let nav = PYBaseNavigationController.init(rootViewController: vc)
        nav.isNavigationBarHidden = true;
        nav.closeInteractivePopClassStrArray = ["FlutterViewController"]
        window.rootViewController = nav
    }
    flutterMethodChannel = FlutterMethodChannel.init(name: "welcome_page_channle_name", binaryMessenger: flutterVc as! FlutterBinaryMessenger)
    flutterEventChannel = FlutterEventChannel(name: "welcome_page_event_channle_name", binaryMessenger: flutterVc as! FlutterBinaryMessenger)
    flutterEventChannel?.setStreamHandler(self)
    
    flutterMethodChannel?.setMethodCallHandler({[weak self, weak flutterMethodChannel,weak flutterVc,weak flutterEventChannel] (call, result) in
        
        if (call.method.elementsEqual("getOauthCode")) {
            self?.getOauthCodeWithFlutterVc(flutterVc)
        }
        
        if (call.method.elementsEqual("showJson")) {
            if let dic = call.arguments as? [String:String], let json = dic["json"] {
                self?.showJson(json, flutterVc)
            }
        }
    })

    
    flutterEventChannel = FlutterEventChannel.init(name: "welcome_page_channle_event_name", binaryMessenger: flutterVc as! FlutterBinaryMessenger);
    flutterEventChannel?.setStreamHandler(self);
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        eventChannelSink = events
        return nil
    }
    
    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        return nil
    }
    
    func getOauthCodeWithFlutterVc(_ flutterVc: FlutterViewController?) {
        let baseVc:BaseViewController = BaseViewController()
        baseVc.getCodeCallBack = {[weak baseVc] (dic) in
        
            baseVc?.dismiss(animated: true, completion: nil)
            self.eventChannelSink?(dic)
        }
        flutterVc?.present(baseVc, animated: true, completion: nil)
    }
    
    func showJson(_ json: String, _ flutterVc: FlutterViewController?) {
        let jsonVc:JsonViewController = JsonViewController()
        jsonVc.jsonStr = json;
        flutterVc?.navigationController?.pushViewController(jsonVc, animated: true);
    }
}
