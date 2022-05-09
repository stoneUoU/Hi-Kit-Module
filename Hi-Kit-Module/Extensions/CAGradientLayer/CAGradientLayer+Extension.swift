//
//  CAGradientLayer+Extension.swift
//  OLMovie
//
//  Created by stone on 2020/9/20.
//  Copyright © 2020 Stone. All rights reserved.
//

import UIKit

extension CAGradientLayer {
    
    //健康码Code外层的渐变效果：
    public func healthCodeViewLayer() -> CAGradientLayer {
        let gradientColors = [UIColor.color_HexStr("#ecbc6b").cgColor,UIColor.color_HexStr("#f6eb9c").cgColor,UIColor.color_HexStr("#e48344").cgColor];
        //定义每种颜色所在的位置
        let gradientLocations:[NSNumber] = [0.0, 1.0]
        //创建CAGradientLayer对象并设置参数
        self.colors = gradientColors
        self.locations = gradientLocations
        //设置渲染的起始结束位置（横向渐变）
        self.startPoint = CGPoint(x: 0, y: 0)
        self.endPoint = CGPoint(x: 1, y: 0)
        return self
    }
}
