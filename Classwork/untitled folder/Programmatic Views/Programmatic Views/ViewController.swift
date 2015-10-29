//
//  ViewController.swift
//  Programmatic Views
//
//  Created by Santiago Perez on 10/28/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let yellowBox = UIView()
    let redBox = UIView()
    let myTextField = UITextField()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      
        yellowBox.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        yellowBox.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(yellowBox)
        
        redBox.frame = CGRectMake(0, 0, self.yellowBox.frame.width, 30)
        redBox.backgroundColor = UIColor.redColor()
        self.yellowBox.addSubview(redBox)
        
        
        self.myTextField.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
        self.myTextField.backgroundColor = UIColor.greenColor()
        self.myTextField.text = "Hello World"
        
        self.view.addSubview(self.myTextField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func moveYelowBox(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5) { () -> Void in
        self.yellowBox.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        }
        
        UIView.animateWithDuration(4) { () -> Void in
        self.yellowBox.frame = CGRect(x: 200, y: 500, width: 100, height: 100)
        }
        
        UIView.animateWithDuration(8) { () -> Void in
            self.yellowBox.frame = CGRect(x: 300, y: 50, width: 100, height: 100)
        }
        
        
    }
    
    @IBAction func makeYellowBoxFullScreen(sender: AnyObject) {
        
        UIView.animateWithDuration(1) { () -> Void in
            self.yellowBox.frame = CGRectMake( 0, 0, self.view.frame.width, self.view.frame.height)
            self.myTextField.frame.origin.y = 300
        }
        
    }


}

