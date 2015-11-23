//
//  FourthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var displayTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func readTextFile(sender: AnyObject) {
        
        let storedText = String(getContentsFromFile())
        
        self.displayTextView.text! = storedText
        
    }
    
    func getContentsFromFile() -> NSArray {
    
        //Set path / create the file
        let path = NSTemporaryDirectory() + "MainTestFile.txt"
        
        var readArray: NSArray? = NSArray(contentsOfFile: path)
        
        if readArray != nil {
            return readArray!
        } else{
        
            readArray = ["Your file was empty"]
            return readArray!
            
        }
        
    }
}
