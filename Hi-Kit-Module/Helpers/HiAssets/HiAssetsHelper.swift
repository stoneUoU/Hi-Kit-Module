//
//  HiAssetsHelper.swift
//  Hi-Helper-Module
//
//  Created by stone on 2022/5/5.
//

open class HiAssetsHelper: NSObject {
    @objc open class func bundledImage(named name: String,moduled module:String) -> UIImage {
        let path = URL(fileURLWithPath: Bundle.main.privateFrameworksPath ?? "").appendingPathComponent("\(module).framework").appendingPathComponent("\(module)".replacingOccurrences(of:"_", with: "-")+".bundle").path;
        let primaryBundle = Bundle(path: path);
        let image = UIImage(named: name, in: primaryBundle, compatibleWith: nil);
        return image ?? UIImage();
    }
}
