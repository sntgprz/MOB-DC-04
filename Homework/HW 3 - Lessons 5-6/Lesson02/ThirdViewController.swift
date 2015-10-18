//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Tedi Konda on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
    
    @IBOutlet weak var numberInputField: UITextField!
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBAction func calculateAction(sender: AnyObject) {
        
        
        //Check the user's input
        
        if (numberInputField.text != "") {
        
            let residual = Int(numberInputField.text!)! % 2
        
            if residual == 0 {
            
                self.resultsLabel.text = "\(numberInputField.text!) is even."
            
            }else {
            
                self.resultsLabel.text = "\(numberInputField.text!) is odd."
            
        }
        
        }
        
        
    }
    
   
}
