//
//  HiFont.swift
//  Hi-Kit-Module
//
//  Created by stone on 2021/9/26.
//

import UIKit

open class HiFont: NSObject {
    
    public static func regular(size:Float) -> UIFont {
        let font = UIFont(name: "PingFangSC-Regular", size: CGFloat(size))
        if (font != nil) {
            return font!;
        }
        return self.defaultFont(size:size);
    }
    
    public static func bold(size:Float) -> UIFont {
        let font = UIFont(name: "PingFangSC-Semibold", size: CGFloat(size))
        if (font != nil) {
            return font!;
        }
        return self.defaultFont(size:size);
    }
    
    public static func light(size:Float) -> UIFont {
        let font = UIFont(name: "PingFangSC-Light", size: CGFloat(size))
        if (font != nil) {
            return font!;
        }
        return self.defaultFont(size:size);
    }
    
    public static func medium(size:Float) -> UIFont {
        let font = UIFont(name: "PingFangSC-Medium", size: CGFloat(size))
        if (font != nil) {
            return font!;
        }
        return self.defaultFont(size:size);
    }
    
    public static func defaultFont(size:Float) -> UIFont {
        
        return UIFont.systemFont(ofSize: CGFloat(size));
    }
}
