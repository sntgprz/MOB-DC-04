//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Tedi Konda on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    
        //Done
    
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    
        //Done
    
    
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
    
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var ageField: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var ageResultsLabel: UILabel!
    
    @IBAction func generateHelloWorldAction(sender: AnyObject) {
        
        self.displayLabel.text = "Hello, world!"
    }
    
    @IBAction func greetingsToUser(sender: AnyObject) {
        
        //Makes sure input is not blank
        if (
            nameField.text != "" &&
            ageField.text != ""
            ) {
        
                //Button's Logic: Changes the label's text to greet the user
                
                let userName = nameField.text!
                let userAge: Int = Int(ageField.text!)!
        
        
                self.displayLabel.text = "Hello, \(userName), you are \(userAge) years old!"
                
        }
    }
    
    
    @IBAction func whatCanYouDoAction(sender: AnyObject) {
        //Makes sure input is not blank
        if (
            nameField.text != "" &&
                ageField.text != ""
            ) {
                
                //Button's Logic: Changes the label's text to greet tell the user what he can do
                
                let userAge: Int = Int(ageField.text!)!
                
                
                if (userAge >= 16) && (userAge < 18) {
                    self.ageResultsLabel.text = "You can drive"
                } else if (userAge >= 18) && (userAge < 21) {
                    self.ageResultsLabel.text = "You can vote"
                } else if (userAge >= 21) {
                    self.ageResultsLabel.text = "You can drink"
                } else {
                    self.ageResultsLabel.text = "You can't do anything. Life is boring."
                }
        }
        
        
    }
    
    @IBAction func multipleThingsToDoAction(sender: AnyObject) {
        
        //Makes sure input is not blank
        if (
            nameField.text != "" &&
                ageField.text != ""
            ) {
                
                //Button's Logic: Changes the label's text to greet tell the user what he can do
                
                let userAge: Int = Int(ageField.text!)!
                
                
                if (userAge >= 16) && (userAge < 18) {
                    self.ageResultsLabel.text = "You can drive"
                } else if (userAge >= 18) && (userAge < 21) {
                    self.ageResultsLabel.text = "You can drive and vote"
                } else if (userAge >= 21) {
                    self.ageResultsLabel.text = "You can drive, vote, and drink, but not at the same time!"
                } else {
                    self.ageResultsLabel.text = "You can't do anything. Life is boring."
                }
        }
    }
    
    
}
