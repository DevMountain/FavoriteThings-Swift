//
//  FavoriteThingsViewController.swift
//  FavoriteThings-Swift
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

import UIKit

class FavoriteThingsViewController: UIViewController {

    var button: UIButton?
    var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button = (UIButton.buttonWithType(.System) as UIButton)
        button?.setTitle("Press me", forState: .Normal)
        button?.frame = CGRectMake(100, 100, 120, 44)
        button?.addTarget(self, action: "changeText:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button!)

        label = UILabel()
        label?.text = "Change me";
        label?.textAlignment = .Center
        label?.frame = CGRectMake(50, 300, 220, 44)
        self.view.addSubview(label!)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeText(sender : AnyObject) {
        button?.setTitle("Pressed", forState: .Normal)
        label?.text = "You changed me!"
    }

}
