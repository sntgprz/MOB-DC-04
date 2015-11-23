//
//  FifthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var targetTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveTextButton(sender: AnyObject) {
       
        if self.targetTextField.text != nil {
            
            breakDownText()
            loadPlist()
            
        }
    }
    
    //Function 1
    //Analyzes the text and breaks it down into individual words
    func breakDownText(){
        
        if self.targetTextField.text != nil {
        
            let fullText = self.targetTextField.text!
            
            //Break down into array of words
            let individualWordArray = fullText.componentsSeparatedByString(" ")
         
            //store into plist
            
            let arrayCount = individualWordArray.count
            
            for i in 1...arrayCount {
                
                saveToPlist(individualWordArray[i-1])
            }
            
        }
    }
    
    
    //Function 2
    //Adds a new value to the plist
    func saveToPlist(newWord: String) {
    
        
        var myNewValue: NSMutableArray?
        
        if let path = NSBundle.mainBundle().pathForResource("StringCollector", ofType: "plist") {
        
            myNewValue = NSMutableArray(contentsOfFile: path)
        
            myNewValue?.addObject(newWord)
        
            myNewValue?.writeToFile(path, atomically: true)
        
            loadPlist()
        
        }
        
    }
    
    
    //Function 3
    //Reads the entire Plist
    func loadPlist() {
        
        let myStringCollector = NSBundle.mainBundle().pathForResource("StringCollector", ofType: "plist")
        
        
        let stringArray = NSArray(contentsOfFile: myStringCollector!)
        
        //Test
        print(stringArray!)
    }
    
}
