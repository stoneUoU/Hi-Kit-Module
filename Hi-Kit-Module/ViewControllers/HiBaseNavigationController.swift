//
//  HiBaseNavigationController.swift
//  Hi-Kit-Module
//
//  Created by stone on 2021/5/22.
//

import UIKit

open class HiBaseNavigationController: UINavigationController {

    open override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    open override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }

    @objc private func toBack() {
        self.popViewController(animated: true)
    }
}
