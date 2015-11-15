//
//  SecondViewController.swift
//  Lesson7Classwork
//
//  Created by Santiago Perez on 10/19/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import Foundation

import UIKit

class PopUpViewController: UIViewController {

    @IBAction func dismissModal(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
}