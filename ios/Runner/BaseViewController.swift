//
//  BaseViewController.swift
//  Runner
//
//  Created by 衣二三 on 2019/9/10.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import UIKit
import WebKit

let appId = "2965866070"
let appSecret = "0b26438e5929e11c9c0e28c5206bdce4"
class BaseViewController: UIViewController,WKUIDelegate,WKNavigationDelegate {
    private var isLoad = true
    var getCodeCallBack: (([String:String])->())?
    var code = "";
    
    
    lazy var webView:WKWebView = {
        return createWebView()
    }()
    lazy var webView2:WKWebView = {
        return createWebView()
    }()
    
    private func createWebView() -> WKWebView {
        let webView = WKWebView.init()
        webView.frame = view.bounds
        webView.navigationDelegate = self
        webView.uiDelegate = self
        return webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(webView)
        loadUrl(urlStr: getOauth2URL())
        
        //        view.addSubview(webView2)
        //
        ////        loadUrl(urlStr: getOauth2URL())
        //        let code = "9af796f6eda525235fe0d4d1b526cc53";
        //        let urlStr = getTookenWithCode(code:code)
        //        URLSessionTask.init()
        //
        //        if let url = URL(string:urlStr) {
        //            webView2.load(URLRequest(url: url))
        //            getCodeCallBack?(code)
        //        }
        
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if (webView == self.webView) {
            
        }
        guard let url = navigationAction.request.url else{
            decisionHandler(.cancel)
            return;
        }
        
        if ((url.host ?? "").elementsEqual("www.baidu.com")) {
            decisionHandler(.cancel)
            let urlComponents = URLComponents.init(string: url.absoluteString)
            let name = urlComponents?.queryItems?.first?.name ?? "";
            let value = urlComponents?.queryItems?.first?.value ?? ""
            if (name.elementsEqual("code") && (urlComponents?.queryItems?.count ?? 0) <= 1) {
                let code = value
                
                getToken(code)
                
                return
            }
        }
        decisionHandler(.allow)
    }
    
    private func loadUrl(urlStr: String){
        if let url = URL.init(string: urlStr) {
            webView.load(URLRequest.init(url: url))
        }
    }
    
    func getToken(_ code:String) {
        let Str = "https://api.weibo.com/oauth2/access_token?client_id=\(appId)&client_secret=\(appSecret)&grant_type=authorization_code&code=\(code)&redirect_uri=http://www.baidu.com"
        
        if let url = URL(string: Str) {
            var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 30)
            request.httpMethod = "POST"
            request.setValue("text/html", forHTTPHeaderField: "Content-Type")
            request.addValue("value", forHTTPHeaderField: "custom")

            let parameters: [String: Any] = [
                "code": code,
                "client_id" : appId,
                "client_secret" : appSecret,
                "grant_type" : "authorization_code",
                "redirect_uri" : "http://www.baidu.com"
            ]
            
        request.setValue(appId, forHTTPHeaderField: "client_id");
        request.setValue(appSecret, forHTTPHeaderField: "client_secret")
            
            request.httpBody = nil;//try? JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            let session =  URLSession.shared
            
            let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
                
                guard error == nil else {
                    return
                }
                
                guard let data = data else {
                    return
                }
                do {
                    //create json object from data
                    /**
                     "access_token" = "2.007oFfHEDkPS1C746b1dd856qkeL_E";
                     "expires_in" = 157679999;
                     isRealName = true;
                     "remind_in" = 157679999;
                     uid = 3777759474;
                    */
                    let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                    print("✅ json: \(json)")
                    let dic = json as! [String:Any]
                    
                    var dicStr = [String:String]()
                    for v in dic {
                        dicStr[v.key] = "\(v.value)"
                    }
                    
                    
                    self.getCodeCallBack?(dicStr)
                        // handle json...
                } catch let error {
                    print(error.localizedDescription)
                }
            })
            task.resume()
        }
    }
}

private func getTookenWithCode(code:String) -> String {
    return "https://api.weibo.com/oauth2/authorize?client_id=\(appId)&redirect_uri=http://www.baidu.com&code=\(code)&grant_type=authorization_code&client_secret=\(appSecret)"
}

private func getOauth2URL() -> String {
    return "https://api.weibo.com/oauth2/authorize?client_id=\(appId)&redirect_uri=http://www.baidu.com"
}
