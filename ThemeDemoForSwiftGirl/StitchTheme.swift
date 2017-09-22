//
//  StitchTheme.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/7.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit

class StitchTheme: ThemeProtocol {
    
    var backgroundImage: UIImage
    {
        get
        {
            return UIImage(named: "StitchBgi.jpg")!
        }
    }
    
    var navBarColor: UIColor
    {
        get
        {
            return UIColor.init(red: 3/255, green: 31/255, blue: 90/255, alpha: 0.7)
        }
    }
    
    var cellBackgroundColor: UIColor
    {
        get
        {
            return UIColor.init(red: 3/255, green: 31/255, blue: 90/255, alpha: 0.3)
        }
    }
    
    var navTitleString: String
    {
        get
        {
            return "史迪奇主題"
        }
    }
    
    var navRightBtnImageName: String
    {
        get
        {
            return "StitchRightBtn_icon.png"
        }
    }
    
    var profileFrame: CGRect
    {
        get
        {
            return CGRect(x: 10, y: 50, width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3)
        }
    }
    
    var subViewFrame: CGRect
    {
        get
        {
            return CGRect(x:(UIScreen.main.bounds.width / 3) + 20, y: 50, width:UIScreen.main.bounds.width - (UIScreen.main.bounds.width / 3) - 30, height: UIScreen.main.bounds.width / 3)
        }
    }
    
    
}
