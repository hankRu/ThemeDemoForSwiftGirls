//
//  PomPomPurinTheme.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/7.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit

class PomPomPurinTheme: ThemeProtocol {
    
    var backgroundImage: UIImage
    {
        get
        {
            return UIImage(named: "PomPompurinBgi.png")!
        }
    }
    
    var navBarColor: UIColor
    {
        get
        {
            return UIColor.init(red: 105/255, green: 34/255, blue: 30/255, alpha: 0.7)
        }
    }
    
    var cellBackgroundColor: UIColor
    {
        get
        {
            return UIColor.init(red: 103/255, green: 34/255, blue: 30/255, alpha: 0.3)
        }
    }
    
    var navTitleString: String
    {
        get
        {
            return "布丁狗主題"
        }
    }
    
    var navRightBtnImageName: String
    {
        get
        {
            return "PomPomPurinRightBtn_icon.png"
        }
    }
    
    var profileFrame: CGRect
    {
        get
        {
            return CGRect(x: 20, y: (UIScreen.main.bounds.width / 3) + 40, width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.width - 40)
        }
    }
    
    var subViewFrame: CGRect
    {
        get
        {
            return CGRect(x:20, y: 20, width:UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.width / 3)
        }
    }
    
    
}
