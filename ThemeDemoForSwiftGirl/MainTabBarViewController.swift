//
//  MainTabBarViewController.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/6.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        let nav1 = UINavigationController(rootViewController: FirstViewController())
        nav1.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        
        let nav2 = UINavigationController(rootViewController: SecondViewController())
        nav2.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        
        self.setViewControllers([nav1, nav2], animated: true)
        
        NotificationCenter.default.addObserver(self, selector: #selector(handelNotification(notification:)), name: ThemeNotifacationName, object: nil)
    }

    @objc func handelNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
        self.tabBar.tintColor = theme.navBarColor
    }
//    override func viewWillLayoutSubviews() {
//        var rect = self.tabBar.frame
//        rect.origin.y = 100
//        self.tabBar.frame = rect
//
//    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    


}
