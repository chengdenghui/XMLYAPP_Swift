//
//  ProfileViewController.swift
//  XMLYAPP
//
//  Created by chengdenghui on 2018/12/16.
//  Copyright © 2018 程登辉. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置导航栏颜色
        navBarBarTintColor = UIColor.init(red: 247/255.0, green: 247/255.0, blue: 247/255.0, alpha: 1.0)
        // 设置初始导航栏透明度
        self.navBarBackgroundAlpha = 0
        self.navigationItem.title = ""
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }
    
}
