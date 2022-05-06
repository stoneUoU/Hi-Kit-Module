//
//  HiNavigationModel.swift
//  Hi-Kit-Module
//
//  Created by stone on 2022/5/5.
//

import Foundation

class HiNavigationModel: NSObject {
    
    @objc var centerTitle:String = "";
    
    @objc var rightTitle:String = "";

    @objc var backImage:UIImage = UIImage();
    
    @objc var centerTitleColor:UIColor?
    
    @objc var hiddenBotLine:Bool = true;
}
