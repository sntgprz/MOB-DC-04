//
//  ViewController.swift
//  persistence example
//
//  Created by Santiago Perez on 11/4/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var helloLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let currentTheme = NSUserDefaults.standardUserDefaults().objectForKey("theme")
        
        if String(currentTheme!) == "light" {
            changeViewToLight()
        }
        else {
            changeViewToDark()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func darkThemeButton(sender: AnyObject) {
        changeViewToDark()
        NSUserDefaults.standardUserDefaults().setObject("dark", forKey: "theme")
    }
    
    @IBAction func lightThemeAction(sender: AnyObject) {
        changeViewToLight()
        NSUserDefaults.standardUserDefaults().setObject("light", forKey: "theme")
    }
    
    
    func changeViewToDark() {
        self.view.backgroundColor = UIColor.blackColor()
        self.helloLabel.textColor = UIColor.whiteColor()
    }
    
    func changeViewToLight() {
        self.view.backgroundColor = UIColor.whiteColor()
        self.helloLabel.textColor = UIColor.blackColor()
    }

}

