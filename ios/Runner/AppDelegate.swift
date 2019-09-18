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
    flutterMethodChannel = FlutterMethodChannel.init(name: "welcome_page_channle_name", binaryMessenger: flutterVc as! FlutterBinaryMessenger)
    flutterEventChannel = FlutterEventChannel(name: "welcome_page_event_channle_name", binaryMessenger: flutterVc as! FlutterBinaryMessenger)
    flutterEventChannel?.setStreamHandler(self)
    
    flutterMethodChannel?.setMethodCallHandler({[weak self, weak flutterMethodChannel,weak flutterVc,weak flutterEventChannel] (call, result) in

        if (call.method.elementsEqual("getOauthCode")) {

            let baseVc:BaseViewController = BaseViewController()
            baseVc.getCodeCallBack = {[weak baseVc] (dic) in
                
                result(dic)
                baseVc?.dismiss(animated: true, completion: nil)
                self?.eventChannelSink?(dic)
            }
            flutterVc?.present(baseVc, animated: true, completion: nil)
        }
    })
    //
//    Showing All Messages
//    :-1: error: accessing build database "/Users/yiersan/Library/Developer/Xcode/DerivedData/Runner-bafmoqzsntdvkzewqoxfustlebxi/Build/Intermediates.noindex/XCBuildData/build.db": not an error
    

    
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
}
