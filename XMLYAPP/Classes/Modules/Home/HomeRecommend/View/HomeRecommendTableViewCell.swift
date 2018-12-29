//
//  HomeRecommendTableViewCell.swift
//  XMLYAPP
//
//  Created by chengdenghui on 2018/12/28.
//  Copyright © 2018 程登辉. All rights reserved.
//

import UIKit

class HomeRecommendTableViewCell: UITableViewCell {

    //懒加载属性
    lazy var titleLabel: UILabel = {   //标题
        let tempLabel = UILabel.init()
        tempLabel.font = UIFont.systemFont(ofSize: 15)
        tempLabel.backgroundColor = UIColor.white
        addSubview(tempLabel)
        return tempLabel
    }()
    
    lazy var headerImageView: UIImageView = {
        let tempImageView = UIImageView.init()
        tempImageView.layer.masksToBounds = true
        tempImageView.layer.cornerRadius = 20
        addSubview(tempImageView)
        return tempImageView
    }()
    
    //数据获取方法
    func getDataWithModel(model:HomeRecommendModel) {
        titleLabel.text = model.recommentTitle
        headerImageView.image = UIImage.init(named: model.headImageStr)
        self.updateConstraintsIfNeeded()
        self.setNeedsUpdateConstraints()
    }

    
    //布局
    override func updateConstraints() {
        super.updateConstraints()
        
        //头像
        headerImageView.snp.makeConstraints { (make) in
            make.top.equalTo(10)
            make.left.equalTo(10)
            make.width.height.equalTo(40)
        }
        
        //标题
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(headerImageView.snp.right).offset(10)
            make.centerY.equalTo(headerImageView.snp.centerY)
            make.width.equalTo(KScreenWith/2)
            make.height.equalTo(20)
        }

        
        
        
    }
    
    
    
    
    
    
    
    
    

}







