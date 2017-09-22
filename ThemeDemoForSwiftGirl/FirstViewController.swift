//
//  FirstViewController.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/6.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit

class FirstViewController: SuperViewController {

    var profileImage: UIImageView!
    var subView: SubView!
    override func viewDidLoad() {
        
        profileImage = UIImageView()
        profileImage.contentMode = .scaleAspectFill
        profileImage.clipsToBounds = true
        profileImage.image = UIImage(named: "iPhoneX.jpg")
        profileImage.setWhiteBorder()
        
        subView = SubView()
        subView.modelLabel.text = "  型號: iPhone X 64G"
        subView.priceLabel.text = "  售價:35900"
        
        super.viewDidLoad()
        self.view.addSubview(profileImage)
        self.view.addSubview(subView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func handelNotification(notification: NSNotification)
    {
        super.handelNotification(notification: notification)
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
        profileImage.frame = theme.profileFrame
        subView.frame = theme.subViewFrame
        subView.reloadInputViews()
        setNavBarTitle(titleStr: theme.navTitleString, textColor: UIColor.white)
        setNavigationRightBtn(imageName: theme.navRightBtnImageName,btnSelector: #selector(self.RightBtnPressed))
    }
 
    
    func RightBtnPressed(_ sender: Any)
    {
        self.navigationController?.pushViewController(DemoViewController(), animated: true)
    }

}
