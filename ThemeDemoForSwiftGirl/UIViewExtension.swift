//
//  UIViewExtension.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/12.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit

extension UIView
{
    func setWhiteBorder()
    {
        self.layer.shadowOffset = CGSize(width: 1.0, height: 0)
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 1;
        self.layer.shadowOpacity = 0.25;
        self.layer.borderWidth = 0.6
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.cornerRadius = 4
        self.layer.masksToBounds = true
    }
}
