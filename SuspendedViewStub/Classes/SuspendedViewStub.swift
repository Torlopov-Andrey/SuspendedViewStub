//
//  SuspendedViewStub.swift
//  SuspendedViewStub
//
//  Created by Andrey Torlopov on 5/24/17.
//  Copyright © 2017 Andrey Torlopov. All rights reserved.
//

import UIKit

public class SuspendedViewStub {
    
    static private var tag = 999
    static private let shared = SuspendedViewStub()
    
    fileprivate var autocomplete: Bool = true
    fileprivate var viewController: UIViewController?
    
    public class func setup(tag: Int) {
        self.tag = tag
    }
    
    public class func setStub(color: UIColor) {
        let view = UIView(frame: (UIApplication.shared.keyWindow?.bounds)!)
        view.backgroundColor = color
        view.tag = self.tag
        UIApplication.shared.keyWindow?.subviews.last?.addSubview(view)        
    }
    
    public class func setStub(sceneName: String, storyboardName: String = "Main", autocomplete: Bool = true) {
        let vc = UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: sceneName)        
        vc.view.tag = self.tag
        self.shared.viewController = vc
        self.shared.autocomplete = autocomplete
        UIApplication.shared.keyWindow?.firstRoot?.present(self.shared.viewController!, animated: true, completion: nil)
    }
    
    public class func removeStub() {
        guard let view = UIApplication.shared.keyWindow?.subviews.last?.viewWithTag(self.tag) else { return }
        
        if self.shared.viewController == nil {
            view.removeFromSuperview()
        }
        else if self.shared.autocomplete {
            self.shared.viewController?.dismiss(animated: true, completion: nil)
            self.shared.viewController = nil
        }
    }
}

extension UIWindow {
    var firstRoot: UIViewController? {
        var root = self.rootViewController
        while let r = root?.presentedViewController {
            root = r
        }
        
        return root
    }
}
