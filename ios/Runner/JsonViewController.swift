//
//  JsonViewController.swift
//  Runner
//
//  Created by 衣二三 on 2019/9/19.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import UIKit

class JsonViewController: BaseJsonViewController {
        
    var deinitCallBack: (()->())?

    private var json: String? = ""
    var jsonStr:String? {
        get {
            return json;
        }set{
            json = newValue
            reloadData(withID: json ?? "")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    deinit {
        deinitCallBack?()
    }
}
