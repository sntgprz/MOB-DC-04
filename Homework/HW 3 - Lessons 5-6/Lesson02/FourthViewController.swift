//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Tedi Konda on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
/*
    TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
*/
    
    
    @IBOutlet weak var inputLabel: UITextField!
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBAction func calculateAction(sender: AnyObject) {
        
        //Check user's input for blanks
        
        if (inputLabel.text != "") {
        
            //Call my Fibonacci function to deliver the desired Fibonacci number
            self.resultsLabel.text = String(fibonacciNth(Int(inputLabel.text!)!))
        
        }
    }
    
    
    
    /*
    
    My old Fibonacci algorithm
    
    */
    
    func fibonacciNth (n: Int) ->Int {
        
        var a: Int = 0
        var b: Int = 1
        var c: Int = 0
        
        if n == 1 {
            //Isolating the first number in Fibonacci makes my algorithm so much easier
            return 0
            
        }else if (n > 1) {
            
            //Loop that adds up the "last" two numbers in the series to get the desired nth number
            for _ in 2...n {
                c = a + b
                b = a
                a = c
            }
            return c
            
        }else {
            
            //Wrong User Input
            return 0
            
        }
    }
    
}



