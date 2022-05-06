//
//  HiBaseViewController.swift
//  Hi-Kit-Module
//
//  Created by stone on 2021/5/22.
//

import UIKit
import SnapKit
import Hi_Router_Module

open class HiBaseViewController: UIViewController {

    var statusView = UIView()
    var navigationView = UIView()
    var centerLabel = UILabel()
    var leftButton = UIButton()
    var rightButton = UIButton()
    var lineView = UIView()
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white;
        self.addRecognizer();
    }
    
    open override func viewWillAppear(_ animated: Bool){
        self.navigationItem.setHidesBackButton(true, animated: true)
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
}

extension HiBaseViewController {
    
    public func setStatusAndNavigationUI(centerLabelTitle:String,rightButtonTitle:String,ifWhiteIMV:Bool = true,navigationColor:UIColor = .black,centerLabelColor:UIColor = .white,rightButtonColor:UIColor = .white,ifLine:Bool = false) {
        
        self.statusView.backgroundColor = navigationColor
        self.view.addSubview(self.statusView)
        
        self.navigationView.backgroundColor = navigationColor
        self.view.addSubview(self.navigationView)
        
        self.leftButton = UIButton()
        self.leftButton.setImage(ifWhiteIMV == true ? UIImage.hi_image(named: "hi_back_w.png", moduled: "Hi_Kit_Module") : UIImage.hi_image(named: "hi_back_default.png", moduled: "Hi_Kit_Module"), for:.normal);
        self.leftButton.addTarget(self, action:#selector(self.toLeft(_:)), for:.touchUpInside)
//        self.leftButton.fitSize(toBtn: CGSize.init(width: 15, height: 15))
        self.navigationView.addSubview(self.leftButton)
        self.centerLabel.text = centerLabelTitle
        self.centerLabel.textAlignment = .center
        self.centerLabel.textColor = centerLabelColor
        self.navigationView.addSubview(self.centerLabel)
        self.rightButton = UIButton()
        self.rightButton.setTitle(rightButtonTitle, for:.normal)
        self.rightButton.setTitleColor(rightButtonColor, for: .normal)
        self.rightButton.titleLabel!.font = UIFont.systemFont(ofSize: 16)
        self.rightButton.addTarget(self, action:#selector(self.toRight(_:)), for:.touchUpInside)
        self.rightButton.contentHorizontalAlignment = .center
        self.navigationView.addSubview(self.rightButton)
        
        self.setStatusAndNavigationMas(ifLine: ifLine)
        
    }
    
    func setStatusAndNavigationMas(ifLine:Bool) {
        self.statusView.snp.makeConstraints { (make) in
            make.top.left.equalTo(self.view)
            make.size.equalTo(CGSize.init(width: HiSCREENWIDTH, height: HiStatusBarH))
        }
        self.navigationView.snp.makeConstraints { (make) in
            make.top.equalTo(self.statusView.snp.bottom)
            make.left.equalTo(self.view)
            make.size.equalTo(CGSize.init(width: HiSCREENWIDTH, height: HiNavigationBarH))
        }
        self.leftButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(self.navigationView)
            make.left.equalTo(self.navigationView.snp.left);
            make.size.equalTo(CGSize.init(width:HiNavigationBarH, height: HiNavigationBarH));
        }
        self.centerLabel.snp.makeConstraints { (make) in
            make.center.equalTo(self.navigationView)
            make.width.equalTo(2*HiSCREENWIDTH/3)
        }
        self.rightButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(self.navigationView)
            make.height.equalTo(HiNavigationBarH)
            make.right.equalTo(-15)
        }
        if ifLine == true {
            self.lineView.backgroundColor = UIColor.gray;
            self.navigationView.addSubview(self.lineView)
            self.lineView.snp.makeConstraints { (make) in
                make.bottom.equalTo(self.navigationView.snp.bottom).offset(0)
                make.height.equalTo(CGFloat(0.7))
                make.width.equalTo(HiSCREENWIDTH)
            }
        }
    }
    
    @objc open func toLeft(_ sender :UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc open func toRight(_ sender :UIButton){
    }
}

extension HiBaseViewController:UIGestureRecognizerDelegate {
    
    func addRecognizer() {
        let GesTar = self.navigationController?.interactivePopGestureRecognizer!.delegate
        let Ges = UIPanGestureRecognizer(target:GesTar,
                                         action:Selector(("handleNavigationTransition:")))
        Ges.delegate = self
        self.view.addGestureRecognizer(Ges)
        self.navigationController?.interactivePopGestureRecognizer!.isEnabled = false
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if self.navigationController?.viewControllers.count == 1 {
            return false
        }
        return true
    }
    
}
