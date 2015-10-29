//
//  ViewController.swift
//  faceSolution
//
//  Created by Santiago Perez on 10/28/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let head = UIView()
    let leftEye = UIView()
    let rightEye = UIView()
    let mouth = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.view.addSubview(self.head)
        self.head.addSubview(self.leftEye)
        self.head.addSubview(self.rightEye)
        self.head.addSubview(self.mouth)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func drawMouth() {
        self.mouth.frame = CGRect(x: 0, y: self.head.frame.origin.y - 50, width: self.view.frame.width, height: 50)
        
        self.mouth.backgroundColor = UIColor.redColor()
    }
    
    func drawEyes() {
        self.leftEye.frame = CGRect(x: 10, y: 10, width: self.head.frame.width / 10, height: self.head.frame.height / 10)
        
        self.leftEye.backgroundColor = UIColor.blueColor()
        
        self.rightEye.frame = CGRect(x: self.head.frame.width - 10, y: 10, width: self.head.frame.width / 10, height: self.head.frame.height / 10)
        self.leftEye.backgroundColor = UIColor.blueColor()
        
    }

    func drawHead() {
        self.head.frame = CGRect(x: self.view.frame.width / 2 - 100, y: self.view.frame.height / 2 - 100, width: 200, height: 200)
        
        self.head.backgroundColor = UIColor.yellowColor()
        
        self.drawEyes()
        self.drawMouth()
    }

}

