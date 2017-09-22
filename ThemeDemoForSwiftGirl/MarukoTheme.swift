//
//  MarukoTheme.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/7.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit

class MarukoTheme: ThemeProtocol {
    
    var backgroundImage: UIImage
    {
        get
        {
            return UIImage(named: "MarukoRightBgi.jpg")!
        }
    }
    
    var navBarColor: UIColor
    {
        get
        {
            return UIColor.init(red: 230/255, green: 80/255, blue: 117/255, alpha: 1)
        }
    }
    
    var cellBackgroundColor: UIColor
    {
        get
        {
            return UIColor.init(red: 230/255, green: 80/255, blue: 117/255, alpha: 0.3)
        }
    }
    
    var navTitleString: String
    {
        get
        {
            return "小丸子主題"
        }
    }
    
    var navRightBtnImageName: String
    {
        get
        {
            return "MarukoRightBtn_icon.png"
        }
    }
    
    var profileFrame: CGRect
    {
        get
        {
            return CGRect(x: 50, y: 20, width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.width - 100)
        }
    }
    
    var subViewFrame: CGRect
    {
        get
        {
            return CGRect(x: 20, y: (UIScreen.main.bounds.width - 100) + 40, width: UIScreen.main.bounds.width - 40, height: 120)
        }
    }
    
    
}
