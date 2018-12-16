//
//  BaseTabBarBouncesContentView.swift
//  Pods
//
//  Created by chengdenghui on 2018/12/16.
//

import UIKit

class BaseTabBarBouncesContentView: BaseTabBarItemContentView {
   public var duration = 0.3
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func selectAnimation(animated: Bool, completion: (() -> ())?) {
        self.bounceAnimation()
        completion?()
    }
    
    func bounceAnimation() {
        let impliesAnimation = CAKeyframeAnimation(keyPath: "transform.scale");
        impliesAnimation.values = [1.0, 1.4, 0.9, 1.15, 1.02, 1.0]
        impliesAnimation.duration = duration * 2
        impliesAnimation.calculationMode = kCAAnimationCubic
        imageView.layer.add(impliesAnimation, forKey: nil)
    }
    
}
