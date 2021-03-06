//
//  AppDelegate.swift
//  XMLYAPP
//
//  Created by chengdenghui on 2018/12/12.
//  Copyright © 2018 程登辉. All rights reserved.
//

import UIKit
import ESTabBarController_swift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        self.window = UIWindow(frame: UIScreen.main.bounds)
        //2.设置窗口颜色
        self.window?.backgroundColor = UIColor.white
        let tab = self.customIrregularityStyle(delegate: self as? UITabBarControllerDelegate)
        self.window?.rootViewController = tab
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    // 加载底部tabbar样式
    func customIrregularityStyle(delegate: UITabBarControllerDelegate?) -> ESTabBarController {
        let tabBarController = ESTabBarController()
        tabBarController.delegate = delegate

        let v1 = HomeViewController()
        let v2 = SearchViewController()
        let v3 = PlayViewController()
        let v4 = FindViewController()
        let v5 = ProfileViewController()
        
        v1.tabBarItem = ESTabBarItem.init(BaseTabBarIrregularityController(), title: "首页", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_1"))
        v2.tabBarItem = ESTabBarItem.init(BaseTabBarIrregularityController(), title: "攻略", image: UIImage(named: "find"), selectedImage: UIImage(named: "find_1"))
        v3.tabBarItem = ESTabBarItem.init(TabBarIrregularityController(), title: nil, image: UIImage(named: "tab_play"), selectedImage: UIImage(named: "tab_play"))
        v4.tabBarItem = ESTabBarItem.init(BaseTabBarIrregularityController(), title:  "发现", image: UIImage(named: "favor"), selectedImage: UIImage(named: "favor_1"))
        v5.tabBarItem = ESTabBarItem.init(BaseTabBarIrregularityController(), title:  "我的", image: UIImage(named: "me"), selectedImage: UIImage(named: "me_1"))
        let n1 = BaseNavigationController.init(rootViewController: v1)
        let n2 = BaseNavigationController.init(rootViewController: v2)
        let n3 = BaseNavigationController.init(rootViewController: v3)
        let n4 = BaseNavigationController.init(rootViewController: v4)
        let n5 = BaseNavigationController.init(rootViewController: v5)
        v1.title = "首页"
        v2.title = "攻略"
        v3.title = "播放"
        v4.title = "发现"
        v5.title = "我的"
        
        tabBarController.viewControllers = [n1, n2, n3, n4, n5]
        return tabBarController
    }
    
    

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

