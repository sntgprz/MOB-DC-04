//
//  SaveJobsViewController.swift
//  ParseStarterProject-Swift
//
//  Created by Santiago Perez on 11/25/15.
//  Copyright © 2015 Parse. All rights reserved.
//

import UIKit

import Parse

class SaveJobsViewController: UIViewController {
    
    
    
    @IBOutlet weak var titleTF: UITextField!
    
    @IBOutlet weak var cityTF: UITextField!
    
    @IBOutlet weak var stateTF: UITextField!
    
    @IBOutlet weak var salaryTF: UITextField!
    
    @IBOutlet weak var experienceTF: UITextField!
    
    
    @IBOutlet weak var descriptionTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func saveJobButton(sender: AnyObject) {
        
        
        let job = PFObject(className:"Jobs")
        job["title"] = self.titleTF.text!
        job["city"] = self.cityTF.text!
        job["salary"] = Int(self.salaryTF.text!)!
        job["state"] = self.stateTF.text!
        job["description"] = self.descriptionTextView.text!
        job["experience"] = Int(self.experienceTF.text!)
            
        job.saveInBackgroundWithBlock {
            (success: Bool, error: NSError?) -> Void in
            if (success) {
                // The object has been saved.
                print("success")
            } else {
                // There was a problem, check error.description
                print("not success")
            }
        }
    }
    

}
