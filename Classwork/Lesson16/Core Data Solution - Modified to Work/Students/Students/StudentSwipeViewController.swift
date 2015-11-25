//
//  StudentSwipeViewController.swift
//  Students
//
//  Created by Santiago Perez on 11/23/15.
//  Copyright © 2015 Thomas Degry. All rights reserved.
//

import UIKit
import EZSwipeController


class StudentSwipeViewController: EZSwipeController {

    override func setupView() {
        datasource = self
    }
    
}

extension StudentSwipeViewController: EZSwipeControllerDataSource {
    
    func viewControllerData() -> [UIViewController] {
        let redVC = UIViewController()
        redVC.view.backgroundColor = UIColor.redColor()
        
        let blueVC = UIViewController()
        blueVC.view.backgroundColor = UIColor.blueColor()
        
        let greenVC = UIViewController()
        greenVC.view.backgroundColor = UIColor.greenColor()
        
        return [redVC, blueVC, greenVC]
    }
}