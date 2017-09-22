//
//  AppDelegate.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/6.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        self.window?.rootViewController = MainTabBarViewController()
        
        //這個 window 不會憑空就顯示在畫面上，我們則需要透過 makeKeyAndVisible 這個 method 讓它顯示出來。為了可以清楚知道真的有顯示，在這邊先把他的背景色改成白色。
        self.window?.backgroundColor = UIColor.white
        self.window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}

    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {}

    func applicationWillTerminate(_ application: UIApplication) {}


}

