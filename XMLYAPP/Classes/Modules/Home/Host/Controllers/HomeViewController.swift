//
//  HomeViewController.swift
//  XMLYAPP
//
//  Created by chengdenghui on 2018/12/16.
//  Copyright © 2018 程登辉. All rights reserved.
//

import UIKit
import DNSPageView

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        // 创建DNSPageStyle，设置样式
        let style = DNSPageStyle()
        style.isTitleViewScrollEnabled = false  //titleView滑动
        style.isTitleScaleEnabled = true           //tittle标题缩放
        style.isShowBottomLine = true            //title下划线
        style.titleSelectedColor = UIColor.black
        style.titleColor = UIColor.gray
        style.bottomLineColor = DominantColor
        style.bottomLineHeight = 2
        
        let titles = ["推荐","分类","VIP","直播","广播"]
        let viewControllers:[UIViewController] = [HomeRecommendViewController(),HomeRecommendViewController(),HomeRecommendViewController(),HomeRecommendViewController(),HomeRecommendViewController()]
        //for循环添加控制器
        for vc in viewControllers{
            self.addChildViewController(vc)
        }
        let pageView = DNSPageView(frame: CGRect(x: 0, y: NavigationBarHeight, width: KScreenWith, height: KScreenHeight-NavigationBarHeight-44), style: style, titles: titles, childViewControllers: viewControllers)
        view.addSubview(pageView)
        
    }

}
