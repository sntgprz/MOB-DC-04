//
//  ViewController.swift
//  delegationProject
//
//  Created by Santiago Perez on 10/21/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UpdateUsernameDelegate {

    
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUsername(name: String){
        self.usernameLabel.text = name
    }

    @IBAction func editUsernameAction(sender: AnyObject) {
        let secondVC = self.storyboard?.instantiateViewControllerWithIdentifier("secondVC") as! SecondViewController
        
        secondVC.delegate = self
        self.presentViewController(secondVC, animated: true, completion: nil)
    }
    

}

