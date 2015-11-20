//
//  ViewController.swift
//  Networking
//
//  Created by Santiago Perez on 11/18/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // Step 1: Create NSURL object of the URL/API endpoint
        //    Conditionally unrap it.
        
        if let url = NSURL(string: "http://www.twitter.com") {
            
            //Step 2: Create the task
            
            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: {
                (data, response, error) -> Void in
                
                //Step 3: Do something with the data and see if there is an error
                if error == nil {
                    let googleSource = NSString(data: data!, encoding: NSUTF8StringEncoding)
                    
                    print(googleSource)
                }else {
                    print("There was an error in talking to the google")
                }
                
                //Step 3A: Convert Byte Code
                let googleSource = NSString(data: data!, encoding: NSUTF8StringEncoding)
                
                print(googleSource)
                
            })
                
            //Step 4: Resume/Start the task
            task.resume()
            
            //5. Paste this code into plist source code
            
            /*
                <key>NSAppTransportSecurity</key>
                <dict>
                    <key>NSAllowsArbitraryLoads</key>
                    <true/>
                </dict>
            */
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

