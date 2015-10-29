//
//  ViewController.swift
//  Programmatic Face
//
//  Created by Santiago Perez on 10/28/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let firstEye = UIView()
    let secondEye = UIView()
    let face = UIView()
    let mouth = UIView()
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.x
        
        let viewWidth = self.view.frame.width
        let viewHeight = self.view.frame.height
    
        self.face.frame = CGRect(
            x: ((viewWidth / 2 ) - (viewWidth / 4)),
            y: ((viewHeight / 2) - (viewHeight/4) ),
            width: (viewWidth/4),
            height: (viewHeight/4)
            )
        
        self.face.backgroundColor = UIColor.purpleColor()
        
        self.firstEye.frame = CGRect(x: (self.face.frame.origin.x), y: (self.face.frame.origin.y), width: (self.face.frame.width / 8), height: (self.face.frame.height / 8))
        
        self.firstEye.backgroundColor = UIColor.redColor()
        
        self.secondEye.frame = CGRect(x: (self.face.frame.origin.x + (self.face.frame.origin.x - 10)), y: (self.face.frame.origin.y + (self.face.frame.origin.y - 10)), width: (self.face.frame.width / 8), height: (self.face.frame.height / 8))
        
        self.secondEye.backgroundColor = UIColor.redColor()
        
        self.mouth.frame = CGRect(x: (self.face.frame.origin.x + 20), y: (self.face.frame.origin.y + 100), width: (self.face.frame.width * 0.75), height: (self.face.frame.height / 8))
        
        
        self.view.addSubview(self.face)
        self.face.addSubview(self.firstEye)
        self.face.addSubview(self.secondEye)
        self.face.addSubview(self.mouth)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

