//
//  FavoriteThingsViewController.swift
//  FavoriteThings-Swift
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

import UIKit

class FavoriteThingsViewController: UIViewController {
    
    var tableView :UITableView?
    var dataSource :FavoriteThingsTableViewDataSource?

    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = FavoriteThingsTableViewDataSource()
        
        tableView = UITableView()
        tableView?.dataSource = dataSource
        tableView?.frame = self.view.bounds
        self.view.addSubview(tableView!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
