//
//  AddViewController.swift
//  Students
//
//  Created by TK on 7/26/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

protocol StudentDelegate {
    func addStudent(name name: String, location: String)
}

class AddViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    
    var delegate: StudentDelegate?
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // Make the first textfield active when the view appeared
        nameField.becomeFirstResponder()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        // End editing so we don't have the keyboard sitting around
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == nameField {
            nameField.resignFirstResponder()
            locationField.becomeFirstResponder()
        } else if textField == locationField {
            locationField.resignFirstResponder()
            save(UIBarButtonItem())
        }
        
        return true
    }

    @IBAction func dismiss(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func save(sender: UIBarButtonItem) {
        // Check if both fields are filled out
        if locationField.text == "" || nameField.text == "" {
            // If not we'll throw an alert
            let alert = UIAlertController(title: "Oops",
                message: "Please fill out all fields",
                preferredStyle: .Alert)
            
            // We create an action to dismiss the alert
            let okay = UIAlertAction(title: "Okay",
                style: UIAlertActionStyle.Default,
                handler: { (action) -> Void in
                    // If clicked we dismiss the alert
                    alert.dismissViewControllerAnimated(true, completion: nil)
            })
            
            // We add the action to the alert
            alert.addAction(okay)
            
            // Present the alert
            presentViewController(alert, animated: true, completion: nil)
            
            // We stop executing as we don't want this function to continue
            return
        }
        
        // We pass the student to the delegate
        delegate?.addStudent(name: nameField.text!, location: locationField.text!)
        
        dismiss(UIBarButtonItem())
    }
    
    @IBAction func goToSlider(sender: AnyObject) {
        
        presentViewController(StudentSwipeViewController(), animated: true, completion: nil)
    }
    
    
}
