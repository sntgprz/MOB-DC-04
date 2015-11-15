//
//  ExpeditureAdderVC.swift
//  BudgetTracker
//
//  Created by Santiago Perez on 11/14/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit


protocol DayExpenditure {
    func addDayExpenditureToArray(expenditureAmount: Float)
}


class ExpenditureAdderVC: UIViewController {
    
    var delegate: DayExpenditure?
    
    @IBOutlet weak var expenditureInputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.expenditureInputTextField.delegate = self
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateLedgerButton(sender: AnyObject) {
        
        
        var expenditureAdderVC = self.storyboard?.instantiateViewControllerWithIdentifier("expenditureAdderVC") as! ExpenditureAdderVC
        expenditureAdderVC = self
        
        
        
        self.delegate?.addDayExpenditureToArray(Float(expenditureInputTextField.text!)!)
    }
    
}

