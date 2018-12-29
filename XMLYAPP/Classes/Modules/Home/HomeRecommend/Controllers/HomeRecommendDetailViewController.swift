//
//  HomeRecommendDetailViewController.swift
//  XMLYAPP
//
//  Created by chengdenghui on 2018/12/29.
//  Copyright © 2018 程登辉. All rights reserved.
//

import UIKit

class HomeRecommendDetailViewController: BaseViewController {
    //属性定义
    var titleStr = String()
    
    //闭包函数
    //第一步 申请一个闭包
    typealias changeUserName = (String) ->()
    
    //第二步 把闭包声明成属性
    var changeText : changeUserName?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = titleStr
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //第三步  闭包传数据
        changeText!("回调获得一票🎫")
        self.navigationController?.popViewController(animated: true)
    }
    

}
