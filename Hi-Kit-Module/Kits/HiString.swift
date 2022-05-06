//
//  HiString.swift
//  Hi-Kit-Module
//
//  Created by stone on 2021/9/27.
//

import Foundation

open class HiString {
    
    public class func randomString(length: Int) -> String {
        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let len = UInt32(letters.length)
     
        var randomString = ""
        for _ in 0 ..< length {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar,length: 1) as String
        }
        return randomString
    }
}
