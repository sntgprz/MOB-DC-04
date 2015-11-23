
//
//  SixthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {
    
    
    @IBOutlet weak var targetTextField: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loadTextButton(sender: AnyObject) {
        
        if let myArray: NSArray = loadPlist() {
        
            var superString = "Saved document: \n"
            
            let arrayCount = myArray.count
            
            //Append super string
            
            for i in 1...arrayCount {
                
                superString = superString + " " + "\(i). " + "\(myArray[i-1]) \n"
                
                
            }
            
            self.targetTextField.text = superString
        }
        
    }
    
    
    
    
    //Function 3
    //Retrieves the entire Plist
    func loadPlist() -> NSArray? {
        
        
        if let myStringCollector = NSBundle.mainBundle().pathForResource("StringCollector", ofType: "plist") {
        
            let stringArray = NSArray(contentsOfFile: myStringCollector)
        
            return stringArray!
            
        }
        
        else {
            
            return nil
        }
    }
    
}
