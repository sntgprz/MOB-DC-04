//
//  ViewController.swift
//  Calculator
//
//  Created by Santiago Perez on 11/2/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Link Display
    @IBOutlet weak var displayLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Create an instance of the Math class so we have access to all of its functionality
    
    var myMath = Math()
    
    //Define Operation Types
    
    
    enum OperationType  {
        case addition
        case subtraction
        case multiplication
        case division
        case none
    }
    
    var triggerOperatorTapStreak = false
    
    var currentOperation = OperationType.none
    
    //Link Operational Buttons
    
    @IBAction func clearButton(sender: AnyObject) {
        self.myMath.clear()
        updateDisplayLabel()
    }
    
    @IBAction func allClearButton(sender: AnyObject) {
        
        self.myMath.allClear()
        triggerOperatorTapStreak = false
        currentOperation = OperationType.none
        updateDisplayLabel()
    }
    
    @IBAction func percentageButton(sender: AnyObject) {
        if self.myMath.displayString != "0" {
            self.myMath.percentage()
            updateDisplayLabel()
        }
    }

    @IBAction func divideButton(sender: AnyObject) {
       
        if triggerOperatorTapStreak == false {
        
            self.myMath.storeFirstNumber()
            self.myMath.displayString = ""
            self.myMath.updateDecimalPoint()
        
            currentOperation = OperationType.division
            triggerOperatorTapStreak = true
            
        } else /*triggerOperatorDoubleTap == true */ {
            
            whenOperationIsAStreak()
            
        }
    }

    @IBAction func multiplyButton(sender: AnyObject) {
        
        if triggerOperatorTapStreak == false {
        
            self.myMath.storeFirstNumber()
            self.myMath.displayString = ""
            self.myMath.updateDecimalPoint()
        
            currentOperation = OperationType.multiplication
            triggerOperatorTapStreak = true
            
        } else /*triggerOperatorDoubleTap == true */ {
            
            whenOperationIsAStreak()
            
        }
    }
    
    @IBAction func subtractButton(sender: AnyObject) {
        
        if triggerOperatorTapStreak == false {
            self.myMath.storeFirstNumber()
            self.myMath.displayString = ""
            self.myMath.updateDecimalPoint()
        
            currentOperation = OperationType.subtraction
            triggerOperatorTapStreak = true
            
        } else /*triggerOperatorDoubleTap == true */ {
            
            whenOperationIsAStreak()
            
        }
    }
    
    @IBAction func addButton(sender: AnyObject) {
    
        if triggerOperatorTapStreak == false {
            
        
            self.myMath.storeFirstNumber()
            self.myMath.displayString = ""
            self.myMath.updateDecimalPoint()
        
            currentOperation = OperationType.addition
            triggerOperatorTapStreak = true
            
        } else /*triggerOperatorDoubleTap == true */ {
        
            whenOperationIsAStreak()
            
        }
        
    }
    
    @IBAction func equalsButton(sender: AnyObject) {
        
        self.myMath.storeSecondNumber()
        
        performOperation()
        
        self.myMath.performDisplayUpdates()
        self.myMath.updateDecimalPoint()
        
        updateDisplayLabel()
        
        self.myMath.displayString = ""
        
        triggerOperatorTapStreak = false
    }
   
    
    @IBAction func changeSignButton(sender: AnyObject) {
        
        //Makes sure that the displayString variable is not blank
        if self.myMath.displayString != "" {
            self.myMath.switchSign()
            updateDisplayLabel()
        } else {
            //If it is blank, take the value from the current result
            self.myMath.displayString = String(self.myMath.resultNumber)
            self.myMath.switchSign()
            updateDisplayLabel()
        }
    }
    
    //Link Numerical Buttons
    
    @IBAction func zeroButton(sender: AnyObject) {
        self.myMath.appendDisplayString("0")
        updateDisplayLabel()
    }
    
    @IBAction func oneButton(sender: AnyObject) {
        self.myMath.appendDisplayString("1")
        updateDisplayLabel()
    }
    
    @IBAction func twoButton(sender: AnyObject) {
        self.myMath.appendDisplayString("2")
        updateDisplayLabel()
    }
    
    @IBAction func threeButton(sender: AnyObject) {
        self.myMath.appendDisplayString("3")
        updateDisplayLabel()
    }
    
    @IBAction func fourButton(sender: AnyObject) {
        self.myMath.appendDisplayString("4")
        updateDisplayLabel()
    }
    
    @IBAction func fiveButton(sender: AnyObject) {
        self.myMath.appendDisplayString("5")
        updateDisplayLabel()
    }
    
    @IBAction func sixButton(sender: AnyObject) {
        self.myMath.appendDisplayString("6")
        updateDisplayLabel()
    }
    
    @IBAction func sevenButton(sender: AnyObject) {
        self.myMath.appendDisplayString("7")
        updateDisplayLabel()
    }
    
    @IBAction func eightButton(sender: AnyObject) {
        self.myMath.appendDisplayString("8")
        updateDisplayLabel()
    }
    
    @IBAction func nineButton(sender: AnyObject) {
        self.myMath.appendDisplayString("9")
        updateDisplayLabel()
    }
   
    @IBAction func decimalButton(sender: AnyObject) {
        if self.myMath.containsDecimalPoint == false {
        
            self.myMath.appendDisplayString(".")
            
            self.myMath.updateDecimalPoint()
            updateDisplayLabel()
            
        }
    }
    
    //--- Support Functions: Pack Code into easily callable content ---

    
    //Update calculator label
    func updateDisplayLabel() {
        if self.myMath.displayString != "" {
            self.displayLabel.text = self.myMath.displayString
        } else {
            self.displayLabel.text = "0"
        }
    }
    
    //Perform operation
    
    func performOperation() {
        switch currentOperation {
        case .addition:
            myMath.addition()
        case .subtraction:
            myMath.subtraction()
        case .multiplication:
            myMath.multiplication()
        case.division:
            myMath.division()
        case.none:
            break
        }

    }
    
    func whenOperationIsAStreak() {
        
        //This function immitates the equal button
        
        self.myMath.storeSecondNumber()
        
        performOperation()
        
        self.myMath.performDisplayUpdates()
        self.myMath.updateDecimalPoint()
        
        updateDisplayLabel()
        
        self.myMath.displayString = ""
        
    }
}

