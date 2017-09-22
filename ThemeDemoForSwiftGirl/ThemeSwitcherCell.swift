//
//  ThemeSwitcherCell.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/7.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit

enum CellThemeType: Int {
    case MarukoThemeCell
    case StitchThemeCell
    case PomPomPurinThemeCell
    var themeType : ThemeType
    {
        get
        {
            switch self
            {
            case .MarukoThemeCell:
                return .marukoTheme
            case .StitchThemeCell:
                return .stitchTheme
            case .PomPomPurinThemeCell:
                return .pompomPurinTheme
            }
        }
    }
}

class ThemeSwitcherCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        
        NotificationCenter.default.addObserver(self, selector: #selector(handelNotification(notification:)),
                                               name: ThemeNotifacationName,
                                               object: nil)
        ThemeManager.themeUpdate()
    }
    
    func handelNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
        self.backgroundColor = theme.cellBackgroundColor
        self.textLabel?.textColor = theme.navBarColor
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configCell(index: Int)
    {
        guard let cellType: CellThemeType = CellThemeType(rawValue: index) else
        {
            return
        }

        if self.accessoryType == .checkmark
        {
            ThemeManager.switcherTheme(type: cellType.themeType)
        }
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
    


}
