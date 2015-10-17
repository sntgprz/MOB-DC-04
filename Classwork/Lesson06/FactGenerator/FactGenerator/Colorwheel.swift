//
//  Colorwheel.swift
//  FactGenerator
//
//  Created by Santiago Perez on 10/14/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import Foundation
import UIKit


struct Colorwheel {
    var colorsArray = [
        UIColor(red: 90/255.0, green: 107/255.0, blue: 181/255.0, alpha: 1.0),
        UIColor.redColor(),
        UIColor.blueColor(),
        UIColor.purpleColor(),
        UIColor.yellowColor(),
        UIColor.orangeColor(),
    ]
    func randomColor() -> UIColor {
        
        let arrayCount = UInt32(colorsArray.count)
        let randomNum = Int(arc4random_uniform(arrayCount))
        return self.colorsArray[randomNum]
    }
}