//
//  ViewController.swift
//  NetworkingWithReddit
//
//  Created by Santiago Perez on 11/18/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        if let mashableUrl = NSURL(string: "https://mashable.com/stores.json") {
            
            let task = NSURLSession.sharedSession().dataTaskWithURL(mashableUrl, completionHandler: {
                (data, response, error) -> Void in
                
                //let redditString = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //print(redditString)
                
                let mashableJson = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                
                //print(redditJson)
                
                if let title = mashableJson["title"] as String
                        print
                    }
                    
                
                //We are basically getting an address to our data
                
                
                /*
                    
                Loop through all the titles
                
                if let children = redditData["children"] as? NSArray {
                
                for child in children {
                    if let data = child["data"] as? NSDictionary {
                        if let title = data["title"] as? NSString {
                        print(title)
                            }
                        }
                    }
                }
                
                */
                
                
                
            })
        
            task.resume()
            
        }
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

