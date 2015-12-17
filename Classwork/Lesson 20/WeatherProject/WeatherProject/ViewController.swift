//
//  ViewController.swift
//  WeatherProject
//
//  Created by Santiago Perez on 12/7/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

//#SP Remember to allow network connections in the PList

class ViewController: UIViewController {

    @IBOutlet weak var weatherInfoLabel: UILabel!
    
    @IBOutlet weak var weatherCity: UITextField!
    
    @IBOutlet weak var weatherState: UITextField!
    
    let apiKey = "2de143494c0b295cca9337e1e96b00e0"
    var temp: Float?
    var condition: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //#SP Hide the label:
        self.weatherInfoLabel.hidden = true
        
        //We could also change the alpha
        // self.weatherCity.alpha = 0
        
        UIApplication.sharedApplication().applicationIconBadgeNumber = 3
        
        //#SP there is also a way to make the Badge go red without any number inside of it. Look it up in the documentation for sharedApplication()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getCurrentWeather(sender: AnyObject) {
        
        let requestUrl = "http://api.openweathermap.org/data/2.5/weather?q=\(weatherCity.text!),\(weatherState.text!)&appid=\(apiKey)"
        
        
        //#SP Alamo fire request (obtained this from documentation)
        Alamofire.request(.GET, requestUrl).responseJSON { (response) -> Void in
            
            //#SP Confirm that we actually pulled data
            print(response.data)
            
            
            //#SP Convert byte code into readable text
            let weatherJson = JSON(data: response.data!)
            print(weatherJson)
            
            //#SP Update label - Use JSON to find desired values
            self.weatherInfoLabel.text = "Today's temperature is \(weatherJson["main"]["temp"]) and \(weatherJson["weather"][0])."
            
            
            //#SP Show label with animation
            UIView.animateWithDuration(1, animations: { () -> Void in
                self.weatherInfoLabel.alpha = 1
            })
            
        
            //#SP For the label text to not trail, go to the attributes inspector and change line breaks to "word wrap"
        }
    }
    
  

}

