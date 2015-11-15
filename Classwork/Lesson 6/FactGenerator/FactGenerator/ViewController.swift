//
//  ViewController.swift
//  FactGenerator
//
//  Created by Santiago Perez on 10/14/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var factLabel: UILabel!
    //factLabel is an instance of the UILabel class
    
    @IBOutlet weak var buttonOutlet: UIButton!
    var myFactBook = Factbook()
    var myColorWheel = Colorwheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.factLabel.text = "You have not generated a random fact."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func generateFactAction(sender: AnyObject) {
        self.factLabel.text = myFactBook.randomFact()
        //We are referencing the text property in the factLabel class
        
        let randomColor = self.myColorWheel.randomColor()
        
        self.view.backgroundColor = randomColor
        self.buttonOutlet.setTitleColor(randomColor, forState: UIControlState.Normal)
    }
}

