//
//  SecondViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var settingsDisplayLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loadSettingsButton(sender: AnyObject) {
        
        loadDataFromPlist()
        
        
    }
    
    func loadDataFromPlist() {
        
        /*
        
        let path = NSBundle.mainBundle().pathForResource("Root", ofType: "plist")
        
        
        
        //Retrieve plist
        var preferenceItems = NSArray(contentsOfFile: path!)
        
        
        //Access index No. 2 in the array
        
        print(preferenceItems)
        
        
        */
        
    }
    
}
