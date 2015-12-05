//
//  LedgerScreenVC.swift
//  BudgetTracker
//
//  Created by Santiago Perez on 11/14/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit


class LedgerScreenVC: UITableViewController, DayExpenditure {
    
    var moneyPerDateSpent: [Float] = []
    
    func addDayExpenditureToArray(expenditureAmount: Float) {
        self.moneyPerDateSpent.append(expenditureAmount)
        self.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "addExpenditureSegue" {
            let destinationVC = segue.destinationViewController as! ExpenditureAdderVC
            destinationVC.delegate = self
        }
    }

    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Sets the number of cells in the table to equal the number of items in our array
        return self.moneyPerDateSpent.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // We are programatically setting the cell identifier here. You can also change the style from .Default to other formats for our table cells
        let cell = tableView.dequeueReusableCellWithIdentifier("namecell", forIndexPath: indexPath)
        
        // Set Colors
        if indexPath.row % 2 == 0 {
            // Set cell background color
            cell.backgroundColor = UIColor.blueColor()
            // Set text color
            cell.textLabel?.textColor = UIColor.whiteColor()
        }
        
        let expenditure = String(self.moneyPerDateSpent[indexPath.row])
        
        cell.textLabel?.text = expenditure
        
        return cell
        
    }
    
    /* Enables Deletion
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            self.moneyPerDateSpent.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    */
    
}

