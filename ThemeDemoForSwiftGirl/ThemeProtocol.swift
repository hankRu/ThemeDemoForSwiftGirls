//
//  ThemeProtocol.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/7.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit


protocol ThemeProtocol
{
    var backgroundImage: UIImage {get}
    var navBarColor: UIColor {get}
    var cellBackgroundColor: UIColor {get}
    var navTitleString: String {get}
    var navRightBtnImageName: String {get}
    var profileFrame: CGRect {get}
    var subViewFrame: CGRect {get}
}


enum ThemeType
{
    case marukoTheme
    case stitchTheme
    case pompomPurinTheme
    
    var theme: ThemeProtocol
    {
        get
        {
            switch self
            {
            case .marukoTheme:
                return MarukoTheme()
            case .stitchTheme:
                return StitchTheme()
            case .pompomPurinTheme:
                return PomPomPurinTheme()
            }
        }
    }
}
