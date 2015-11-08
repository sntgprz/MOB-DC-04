
//
//  Math.swift
//  Calculator
//
//  Created by Santiago Perez on 11/4/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import Foundation

class Math {
    
    // ---- Properties ----
    
    var firstNumber: Double = 0
    var secondNumber: Double = 0
    var resultNumber: Double = 0
    var displayString: String = ""
    
    var containsDecimalPoint: Bool = false
 
    
    // ---- Methods ----
    
    
    //1. Takes a string from the Display Label and stores it in the class's string.
    func storeInDisplayString(anyString: String) {
    
        self.displayString = anyString
    }
    
    //2. Intermediate operational function
    //Meant to take the class's Display String and Convert it into a Double type.
    func convertIntoDouble(anyString: String) -> Double{
        
        return Double(anyString)!
    }
    
    //3. Passes the Display String into our the storage in the form of "firstNumber"
    func storeFirstNumber() {
        if displayString != "" {
            self.firstNumber = convertIntoDouble(self.displayString)
            self.displayString = ""
        }
    }
    
    //4. Passes the Display String into our the storage in the form of "secondNumber"
    func storeSecondNumber() {
        
        self.secondNumber = convertIntoDouble(self.displayString)
        self.displayString = ""
    }
    
    /*5. Intermediate operational function
    //Pass operational result into the "resultNumber" variable
    func  storeResultNumber(operationalResult: Double) {
        
        self.resultNumber = operationalResult
    }*/
    
    //6. Update display string after operation, perform other displays
    func performDisplayUpdates() {
        
        self.displayString = String(self.resultNumber)
        self.firstNumber = self.resultNumber
        
        self.secondNumber = 0
        self.resultNumber = 0
        
    }
    
    //7. Append Display String
    func appendDisplayString(characterToAdd: String) {
        
        self.displayString = self.displayString + characterToAdd
        
    }
    
    //ALL OPERATIONS
    
    //Addition
    func addition() {
        
        self.resultNumber = self.firstNumber + self.secondNumber
    }
    
    //Subtraction
    func subtraction() {
        
        self.resultNumber = self.firstNumber - self.secondNumber
    }
    
    //Multiplication
    func multiplication() {
        
        self.resultNumber = self.firstNumber * self.secondNumber
    }
    
    //Division
    func division() {
        
        self.resultNumber = self.firstNumber / self.secondNumber
        
    }
    
    //Percentage
    func percentage() {
        self.displayString = String(self.convertIntoDouble(self.displayString) / 100)
    }
    
    //Clear
    func clear() {
        self.displayString = ""
    }
    
    //All Clear
    func allClear() {
        self.firstNumber = 0
        self.secondNumber = 0
        self.resultNumber = 0
        self.displayString = ""
        
    }
    
    //Switch Signs
    
    func switchSign() {
        
        var temporary = convertIntoDouble(self.displayString)
        
        temporary = temporary * (-1)
        
        self.displayString = String(temporary)
        
    }
    
    //Miscellaneous Functions
    
    //Switch containsDecimalPoint
    
    
    //Loop through string and search for a dot (.)
    
    func updateDecimalPoint() {
        
        self.containsDecimalPoint = checkForDecimalPoint()
        
    }
    
    func checkForDecimalPoint() -> Bool {
        
        var myArray: [String] = []
        
    
        for i in self.displayString.characters {
            
            myArray.append(String(i))
            
        }
        
        if self.displayString != "" {
        
            for i in 0...myArray.count {
                if myArray[i] == "." {
                    return true
                }
            }
        }
    
        return false
    }
    
   
}

