//
//  SearchScreenViewController.swift
//  foodTrackConceptCode
//
//  Created by Santiago Perez on 11/26/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class SearchScreenViewController: UIViewController {

    
    
    
    @IBOutlet weak var foodChoicePicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. Change the options for the UIPickerView
        
        
        
        
        //optional public func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goButton(sender: AnyObject) {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
