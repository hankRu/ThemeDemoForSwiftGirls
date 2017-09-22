//
//  UIViewViewControllerExtension.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/6.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit

extension UIViewController
{
    func setNavigationBar(color:UIColor)
    {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = color
        self.navigationController?.navigationBar.backgroundColor = UIColor.clear
    }
    
    func setNavBarTitle(titleStr:String ,textColor:UIColor)
    {
        let label = UILabel()
        label.backgroundColor = UIColor.clear
        label.textAlignment = .center
        label.textColor = textColor
        self.navigationItem.titleView = label
        label.text = titleStr
        label.sizeToFit()
    }
    
    func setNavigationRightBtn(imageName:String ,btnSelector:Selector)
    {
        let btnBack = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        btnBack.setBackgroundImage(UIImage(named: imageName), for: UIControlState.normal)
        btnBack.setBackgroundImage(UIImage(named: imageName), for: UIControlState.highlighted)
        btnBack.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        btnBack.contentHorizontalAlignment = UIControlContentHorizontalAlignment.right
        btnBack.addTarget(self, action: btnSelector, for: UIControlEvents.touchUpInside)
        
        let btnBackBarButtonItem = UIBarButtonItem(customView: btnBack)
        btnBackBarButtonItem.style = UIBarButtonItemStyle.plain
        self.navigationItem.rightBarButtonItem = btnBackBarButtonItem
    }
}
