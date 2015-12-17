//
//  SecondViewController.swift
//  WeatherProject
//
//  Created by Santiago Perez on 12/7/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class SecondViewController: UIViewController {
    
    //#SP You would usually store this in the app delegate; because it is a singleton and would make the apiKey available throughout our whole app
    var apiKey = "2de143494c0b295cca9337e1e96b00e0"
    
    var tomorrowWeather: NSDictionary?
    
    
    @IBOutlet weak var setReminderOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setReminderOutlet.alpha = 0
        
        getFutureWeather()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getFutureWeather() {
        
        let requestUrl = "http://api.openweathermap.org/data/2.5/forecast?q=Washington,dc&appid=\(apiKey)"
        
        //#SP Declare the variable that this function will return
        var firstCity: NSDictionary?
        
         Alamofire.request(.GET, requestUrl).responseJSON { (response) -> Void in
            
            //#SP Confirm that we actually pulled data
            print(response.data)
            
            
            //#SP Convert byte code into readable text
            let weatherJson = JSON(data: response.data!)
            print(weatherJson)
            
        
            //#SP access location of data in the API.
            firstCity = weatherJson["list"][0].rawValue as? NSDictionary
            
            //print(firstCity)
            
            self.tomorrowWeather = firstCity
            
            //#SP Bring back button:
            UIView.animateWithDuration(1, animations: { () -> Void in
                self.setReminderOutlet.alpha = 1
            })
            
        }
        

    }
    @IBAction func setReminderAction(sender: AnyObject) {
        
        let temp = self.tomorrowWeather!["main"]!["temp"] as! NSString
        
        var notification = UILocalNotification()
        
        
        //#SP Set notification
        notification.alertBody = "The weather today is \(temp!)."
        notification.fireDate = datePicker.date
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.category = "GA_WEATHER_CATEGORY"
        notification.userInfo = ["UUID": ["weather": "tomorrow", "date": datePicker.date]]
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
        
        //#SP update the number of notifications for the user
        let notifications = UIAPPLICation.sharedApplication().scheduledLocalNotifications as! [UILocalNotification] //#SP Typecast as an array.
        for notification in notifications {
            
        }
        
        
        //#TK Example: How to convert linux time to Date format.
        /*
        let dt =  self.tomorrowWeather!["dt"] as! NSTimeInterval
        let givenDate = NSDate(timeIntervalSince1970: dt)
        
        print(givenDate)
        */

    }
    
}

    
