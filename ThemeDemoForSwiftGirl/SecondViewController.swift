//
//  SecondViewController.swift
//  ThemeDemoForSwiftGirl
//
//  Created by 盧明翰 on 2017/9/6.
//  Copyright © 2017年 Minhan Ru. All rights reserved.
//

import UIKit

class SecondViewController: SuperViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView!
    let cellReuseIdentifier: String = "ThemeSwitcherCell"
    var selectIndexRow: Int = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.addTableView()
        setNavBarTitle(titleStr: "選擇主題", textColor: UIColor.white)
    }
    
    func addTableView()
    {
        self.tableView = UITableView(frame: self.view.bounds)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView()
        self.tableView.register(ThemeSwitcherCell.self, forCellReuseIdentifier: self.cellReuseIdentifier)
        self.tableView.backgroundColor = UIColor.clear
        self.view.addSubview(self.tableView)
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    

    //MARK: - UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: ThemeSwitcherCell? = tableView.dequeueReusableCell(withIdentifier: self.cellReuseIdentifier) as? ThemeSwitcherCell
        
        if cell == nil
        {
            cell = ThemeSwitcherCell(style: .default, reuseIdentifier: self.cellReuseIdentifier)
        }
        
        if indexPath.row == self.selectIndexRow
        {
            cell?.accessoryType = .checkmark
        }
        else
        {
            cell?.accessoryType = .none
        }
        
        switch indexPath.row
        {
        case 0:
            cell?.textLabel?.text = "小丸子"
        case 1:
            cell?.textLabel?.text = "史迪奇"
        case 2:
            cell?.textLabel?.text = "布丁狗"
        default:
            cell?.textLabel?.text = ""
        }
        
        cell!.configCell(index: indexPath.row)
        return cell!
    }
    
    //MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectIndexRow = indexPath.row
        self.tableView.reloadData()
    }
    
    deinit
    {
        print("deinit: SecondViewController")
        NotificationCenter.default.removeObserver(self)
    }
}
