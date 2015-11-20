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
        
        
        
        
        if let redditUrl = NSURL(string: "https://www.reddit.com/.json") {
            
            let task = NSURLSession.sharedSession().dataTaskWithURL(redditUrl, completionHandler: {
                (data, response, error) -> Void in
                
                //let redditString = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //print(redditString)
                
                let redditJson = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                
                print(redditJson)
                
                if let redditData = redditJson["data"] as? NSDictionary {
            
                    //We have to conditionally unrap everything down the food chain
                    
                    if let children = redditData["children"] as? NSArray {
                        if let firstArticle = children[0] as? NSDictionary {
                            if let data = firstArticle["data"] as? NSDictionary {
                                if let title = data["title"] as? NSString {
                                    print(title)
                                }
                            }
                        }
                    }
                    
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

