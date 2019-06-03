//
//  SubView.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/12.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit

class SubView: UIView {
    
    var modelLabel: UILabel!
    var priceLabel: UILabel!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        NotificationCenter.default.addObserver(self, selector: #selector(handelNotification(notification:)),
                                               name: ThemeNotifacationName,
                                               object: nil)
        self.addSubViews()
        ThemeManager.themeUpdate()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubViews()
    {
        modelLabel = UILabel(frame:CGRect(x: 0, y: 0, width: self.frame.width, height: (self.frame.height / 2) - 1))
        priceLabel = UILabel(frame:CGRect(x: 0, y: (self.frame.height / 2) + 2, width: self.frame.width, height: (self.frame.height / 2) - 1))
            
        self.addSubview(modelLabel)
        self.addSubview(priceLabel)
    }
    
    override func reloadInputViews()
    {
        modelLabel.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: (self.frame.height / 2) - 1)
        priceLabel.frame = CGRect(x: 0, y: (self.frame.height / 2) + 2, width: self.frame.width, height: (self.frame.height / 2) - 1)
    }
    
    @objc func handelNotification(notification: NSNotification)
    {
        guard let theme = notification.object as? ThemeProtocol else
        {
            return
        }
        self.modelLabel.textColor = UIColor.white
        self.modelLabel.backgroundColor = theme.cellBackgroundColor
        self.modelLabel.setWhiteBorder()
        self.priceLabel.textColor = UIColor.white
        self.priceLabel.backgroundColor = theme.cellBackgroundColor
        self.priceLabel.setWhiteBorder()
    }
    
    deinit
    {
        print("deinit: SubView")
        NotificationCenter.default.removeObserver(self)
    }
}
