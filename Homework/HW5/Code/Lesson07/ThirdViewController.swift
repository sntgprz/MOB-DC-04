//
//  ThirdViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var labelWithTextToSave: UITextView!
    
    var textStored: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Programatically set the text to the label:
        
        self.labelWithTextToSave.text = "TODO three: Save the text in this text box to a flat file when 'Store Text in File' is pressed."

        
    }
    
    @IBAction func saveTxtToFileButton(sender: AnyObject) {
        
        textStored = self.labelWithTextToSave.text!
        
        if textStored != nil {
        
            storeTextInFile1(textStored!)
            
            //storeTextInFile2(textStored!)
            
            print(textStored!)
            
        }
    }
    
    @IBAction func nextButton(sender: AnyObject) {
        
        //Write to File
        
        if textStored != nil {
        
            storeTextInFile2(textStored!)
        
            self.labelWithTextToSave.text = "The text that was previously here is now stored in a temporary file."
            
            //Check in console
            print(textStored!)
            
        }
        
    }
    
    //Function 1
    //I wrote this function, but it is not working
    //Edit: It works now. I used a different item bar button
    
    func storeTextInFile1(textToStore: String) {
        
        //Set path / create the file
        let path = NSTemporaryDirectory() + "MainTestFile.txt"
        
        
        //Store in an Array
        let arrayOfInfo: NSArray = [textToStore]
        
        //Write to file
        arrayOfInfo.writeToFile(path, atomically: true)
        
        
        
        //ASK TEDI WHY THIS DOESN'T WORK
        //Write the string in the file
        //try textToStore.writeToFile(path, atomically: true, encoding: NSUTF8StringEncoding)
        //XCode tells me this would need a try catch statement
    }
    
    // Function 2
    //I got this function online - It works
    func storeTextInFile2(textToStore: String) {
        
        //Create File
        
        let file = "temporaryFile1.txt"
        
        let text = "some text"
        
        
        if let dir: NSString = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first {
            
            //Set Path
            
            let path = dir.stringByAppendingPathComponent(file)
            
            //Write to file
            
            do {
                try text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding)
            } catch{
            
            }
        
        }
        
        
    }
    
}









