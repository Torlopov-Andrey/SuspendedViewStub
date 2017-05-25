//
//  AppDelegate.swift
//  SuspendedViewStub
//
//  Created by torlopov.andrey@gmail.com on 05/24/2017.
//  Copyright (c) 2017 torlopov.andrey@gmail.com. All rights reserved.
//

import UIKit
import SuspendedViewStub

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Optional setup. By defatul tag is 999.
        SuspendedViewStub.setup(tag: 888)
        
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Set colored view, custom view by id, and don't forget about autocomplete.
        // SuspendedViewStub.setStub(color: .green)
        SuspendedViewStub.setStub(sceneName: "AuthStubScene", storyboardName: "Main", autocomplete: false)
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        SuspendedViewStub.removeStub()
    }
}

