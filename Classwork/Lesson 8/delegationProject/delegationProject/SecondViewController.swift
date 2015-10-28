//
//  SecondViewController.swift
//  delegationProject
//
//  Created by Santiago Perez on 10/21/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

protocol UpdateUsernameDelegate {
    // Set the information for the other view controller (the one that is being updated)
    
    func updateUsername(name: String)
    
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    
    var delegate: UpdateUsernameDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveAndGoBack(sender: AnyObject) {
        
        //calling the method here
        self.delegate?.updateUsername(self.usernameField.text!)
        
        //We need to also dismiss the screen
        self.dismissViewControllerAnimated(true, completion: nil)
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
