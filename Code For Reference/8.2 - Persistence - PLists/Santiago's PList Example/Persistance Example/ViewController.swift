//
//  ViewController.swift
//  Persistance Example
//
//  Created by Santiago Perez on 11/9/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userInputForValue: UITextField!
    
    @IBOutlet weak var userInputForKey: UITextField!

    @IBOutlet weak var displayData: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func saveData(sender: AnyObject) {
        
        var myNewStudent: NSMutableDictionary?
        
        if let path = NSBundle.mainBundle().pathForResource("Student", ofType: "plist") {
            
            myNewStudent = NSMutableDictionary(contentsOfFile: path)
            
            myNewStudent?.setValue(self.userInputForValue.text!, forKey: self.userInputForKey.text!)
            
            myNewStudent?.writeToFile(path, atomically: true)
            
            loadData()
            
            
        }
        
        
        /*
        var myNewToDo: NSMutableArray?
        
        if let path = NSBundle.mainBundle().pathForResource("Todos", ofType: "plist") {
            
            myNewToDo = NSMutableArray(contentsOfFile: path)
            
            myNewToDo?.addObject(userInput.text!)
            
            myNewToDo?.writeToFile(path, atomically: true)
            
            loadData()

        
        }
        */
    }
    
    
   /* @IBAction func loadStory(sender: AnyObject) {
        
        let path = NSTemporaryDirectory() + "mystory.txt"
        
        let myStory: NSString? = NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding)
        
        if let returnedStory = myStory {
            
        }
    }

    */
    
    @IBAction func saveStory(sender: AnyObject) {
    }
    
    
    func loadData() {
        
        let myStudent = NSBundle.mainBundle().pathForResource("Student", ofType: "plist")
        
        let studentsDict = NSDictionary(contentsOfFile: myStudent!)
        
        //Test
        print(studentsDict!)
        
        /*
        let myTodos = NSBundle.mainBundle().pathForResource("Todos", ofType: "plist")
        
        let toDosArray = NSArray(contentsOfFile: myTodos!)
        
        //Test
        print(toDosArray!)

        */
    
    }
}

