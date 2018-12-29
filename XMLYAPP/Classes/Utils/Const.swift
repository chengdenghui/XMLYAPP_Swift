//
//  Const.swift
//  XMLYAPP
//
//  Created by chengdenghui on 2018/12/28.
//  Copyright © 2018 程登辉. All rights reserved.
//

import Foundation
import UIKit
import SnapKit


let KScreenWith = UIScreen.main.bounds.size.width
let KScreenHeight = UIScreen.main.bounds.size.height
let DominantColor = UIColor.init(red: 242/255.0, green: 77/255.0, blue: 51/255.0, alpha: 1)
let FooterViewColor = UIColor.init(red: 240/255.0, green: 241/255.0, blue: 244/255.0, alpha: 1)

// iphone X
let isIphoneX = KScreenHeight == 812 ? true : false
// navigationBarHeight
let NavigationBarHeight : CGFloat = isIphoneX ? 88 : 64
// tabBarHeight
let TabBarHeight : CGFloat = isIphoneX ? 49 + 34 : 49






