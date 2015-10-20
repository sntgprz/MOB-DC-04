//
//  ViewController.swift
//  Lesson7Classwork
//
//  Created by Santiago Perez on 10/19/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var permissionField: UITextField!
    
    @IBOutlet weak var coloredBox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeViewBackgroundButton(sender: AnyObject) {
        
        UIView.animateWithDuration(5) { () -> Void in
            self.coloredBox.backgroundColor = UIColor.redColor()
            self.coloredBox.frame = CGRect(x: 50, y: 10, width: 300, height: 100)
            
            self.view.backgroundColor = UIColor.blueColor()
        }
        
        if self.permissionField.text == "yes" {
            self.performSegueWithIdentifier("popUpSecondViewSegue", sender: sender)
        }
        
    }

    @IBAction func viewSwipeRight(sender: AnyObject) {
        print("gesture 'right' worked")
        self.coloredBox.backgroundColor = UIColor.purpleColor()
        
    }
    
    @IBAction func viewSwipeLeft(sender: AnyObject) {
        print("gesture 'left' worked")
        self.coloredBox.backgroundColor = UIColor.yellowColor()
        
    }
    
    
}

