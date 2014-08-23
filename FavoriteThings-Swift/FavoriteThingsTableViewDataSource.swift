//
//  FavoriteThingsTableViewDataSource.swift
//  FavoriteThings-Swift
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

import UIKit

class FavoriteThingsTableViewDataSource: NSObject, UITableViewDataSource {
   
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.favoriteThings().count
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        var cell :UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("cell") as? UITableViewCell
        if cell == nil {
            cell = UITableViewCell()
        }
        cell?.textLabel.text = self.favoriteThings()[indexPath.row]
        return cell
    }
    
    func favoriteThings() -> Array<String> {
        return ["Model S", "BYU Football", "BYU Basketball", "iPhone", "Mac", "Podcasts", "LOST"]
    }
    
}
