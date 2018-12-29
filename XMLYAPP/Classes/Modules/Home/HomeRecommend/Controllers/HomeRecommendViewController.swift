//
//  HomeRecommendViewController.swift
//  XMLYAPP
//
//  Created by chengdenghui on 2018/12/28.
//  Copyright © 2018 程登辉. All rights reserved.
//

import UIKit

class HomeRecommendViewController: BaseViewController {

    //懒加载
    lazy var tableView: UITableView? = {
        let tempTableView = UITableView(frame: CGRect(x: 0, y: 0, width: KScreenWith, height: KScreenHeight-NavigationBarHeight-TabBarHeight-40), style: .plain)
        tempTableView.delegate = self
        tempTableView.dataSource = self
        tempTableView.separatorStyle = .singleLine
        view.addSubview(tempTableView)
        return tempTableView
    }()
    
    //相关类的初始化
    var dataSource = ["1"]
    
    
    //加载
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.backgroundColor = UIColor.white
        
        dataSource = ["张三", "李四" , "王五", "赵六", "张三", "李四" , "王五", "赵六", "张三", "李四" , "王五", "赵六", "张三", "李四" , "王五", "赵六", "张三", "李四" , "王五", "赵六"]
        
    }
    



}


extension HomeRecommendViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "HomeRecommendTableViewCell"
        var cell:HomeRecommendTableViewCell? = tableView.dequeueReusableCell(withIdentifier: cellId) as? HomeRecommendTableViewCell
        if cell==nil {
            cell = HomeRecommendTableViewCell(style: .subtitle, reuseIdentifier: cellId)
            cell?.selectionStyle = .none
        }
        cell?.backgroundColor = UIColor.white
        let model = HomeRecommendModel.init()
        model.recommentTitle = "回家吃饭"
        model.headImageStr = "电子书城"
        cell?.getDataWithModel(model: model)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = HomeRecommendDetailViewController()
        VC.titleStr = "推荐详情页"
        //第四步 闭包调用部分进行传值
        VC.changeText = { (names) -> () in
            print("------\(names)")
        }
        self.navigationController?.pushViewController(VC, animated: true)
    }

}
