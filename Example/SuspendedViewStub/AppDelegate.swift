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
//        SuspendedViewStub.setup(tag: 888)
        
        return true
    }

    
    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
}

