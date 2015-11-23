//
//  FirstViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var defaultsDisplayText: UITextView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        updateWithUserDefaults()
        
    }
    
    
    func updateWithUserDefaults() {
        
       let testString = NSUserDefaults.standardUserDefaults().objectForKey("test_string")
        
       let testNum =  NSUserDefaults.standardUserDefaults().objectForKey("test_number")
        
        if testString != nil || testNum != nil {
        
            let changedText = "Your stored string is '' \(testString!) '', and your stored number is \(testNum!)."
        
            self.defaultsDisplayText.text = changedText
        
        } else {
            
            self.defaultsDisplayText.text = "there are no stored user defaults."
        }
        
    }
    
    
    
}