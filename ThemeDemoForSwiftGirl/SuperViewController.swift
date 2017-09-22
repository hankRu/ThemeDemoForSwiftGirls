//
//  SuperViewController.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/7.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit

class SuperViewController: UIViewController {
    
    var backgroundImage: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        backgroundImage?.contentMode = .scaleAspectFill
        backgroundImage?.clipsToBounds = true
        self.view.addSubview(backgroundImage!)
        self.edgesForExtendedLayout = []
        
        NotificationCenter.default.addObserver(self, selector: #selector(handelNotification(notification:)), name: ThemeNotifacationName, object: nil)
        ThemeManager.themeUpdate()
    }
 
    
    
    func handelNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
        backgroundImage?.image = theme.backgroundImage
        setNavigationBar(color: theme.navBarColor)
    }
    
    deinit
    {
        print("deinit: SuperViewController")
        NotificationCenter.default.removeObserver(self)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
