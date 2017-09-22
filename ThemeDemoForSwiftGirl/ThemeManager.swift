//
//  ThemeManager.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/7.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit

let ThemeNotifacationName = NSNotification.Name("keyThemeNotifacation")

class ThemeManager: NSObject
{
    var theme: ThemeProtocol = MarukoTheme() /// 預設的主題
    
    /// ThemeManager的Singleton
    static var manager: ThemeManager?
    static func shareInstance() -> ThemeManager
    {
        if manager == nil
        {
            manager = ThemeManager()
        }
        return manager!
    }
    
    
    /// 切換主題的方法, 要切換的列舉類型
    static func switcherTheme(type: ThemeType)
    {
        ThemeManager.shareInstance().switcherTheme(type: type)
    }
    
    /// 更新主题的方法
    static func themeUpdate()
    {
        NotificationCenter.default.post(name: ThemeNotifacationName, object: ThemeManager.shareInstance().theme)
    }
    
    //MARK: - Private Method
    fileprivate override init() {}
    
    /// 切換主題的方法
    /// - Parameter type: 要切換主題的列舉類型
    fileprivate func switcherTheme(type: ThemeType)
    {
        self.theme = type.theme
        NotificationCenter.default.post(name: ThemeNotifacationName, object: self.theme)
    }
}
