//
//  SecondViewController.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {


    @IBOutlet weak var gameRules: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    //Programmatically Dismisses the View Controller
    @IBAction func dismissRules(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
