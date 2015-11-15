//
//  ViewController.swift
//  introToClasses
//
//  Created by Santiago Perez on 10/12/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func mainButtonForSomething(sender: AnyObject) {
        self.mainLabel.text = "CHANGED YO!"
    }
    @IBOutlet weak var mainLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.mainLabel.text = "hello world"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

