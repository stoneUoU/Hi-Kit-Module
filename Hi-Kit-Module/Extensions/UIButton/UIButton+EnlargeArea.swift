////
////  UIButton+EnlargeArea.swift
////  Hi-Kit-Module
////
////  Created by stone on 2022/5/5.
////
//
//// MARK：扩展按钮的点击区域
//import Foundation
//
//extension UIButton {
//    
//    private struct customEdgeInset {
//        static var top: String = "topkey"
//        static var left: String = "leftkey"
//        static var bottom: String = "botkey"
//        static var right: String = "rightkey"
//    }
//    open func setClickEdge(_ top: CGFloat,_ bot: CGFloat,_ left: CGFloat,_ right: CGFloat) {
//        objc_setAssociatedObject(self, &customEdgeInset.top, top, .OBJC_ASSOCIATION_COPY_NONATOMIC)
//        objc_setAssociatedObject(self, &customEdgeInset.left, left, .OBJC_ASSOCIATION_COPY_NONATOMIC)
//        objc_setAssociatedObject(self, &customEdgeInset.right, right, .OBJC_ASSOCIATION_COPY_NONATOMIC)
//        objc_setAssociatedObject(self, &customEdgeInset.bottom, bot, .OBJC_ASSOCIATION_COPY_NONATOMIC)
//    }
//    func returnRect() -> CGRect{
//        let top: CGFloat = objc_getAssociatedObject(self, &customEdgeInset.top) as! CGFloat
//        let left: CGFloat = objc_getAssociatedObject(self, &customEdgeInset.left) as! CGFloat
//        let bot: CGFloat = objc_getAssociatedObject(self, &customEdgeInset.bottom) as! CGFloat
//        let right: CGFloat = objc_getAssociatedObject(self, &customEdgeInset.right) as! CGFloat
//        if top>0 || left>0 || bot>0 || right>0 {
//            return CGRect(x: self.bounds.origin.x-left, y: self.bounds.origin.y-top, width: self.bounds.size.width+left+right, height: self.bounds.size.height+top+bot)
//        }else {
//            return self.bounds
//        }
//    }
//    open override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
//        let rect = returnRect()
//        if rect.contains(point) {
//            print("当前点击位置",point)
//            return self;
//        }else {
//            return nil
//        }
//    }
//}
