//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Tedi Konda on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    
    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var resultsLabel: UILabel!
 
    @IBAction func addAction(sender: AnyObject) {
        
        //Check that the user's input is not blank
        
        if (numberField.text != "")  {
        
            let newNumber = Float(numberField.text!)!
        
            self.resultsLabel.text = String(
            
            Float(resultsLabel.text!)! + newNumber
                
            
            )
            
        }
    }
}
