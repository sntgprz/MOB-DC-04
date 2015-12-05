//
//  ViewController.swift
//  Feedr
//
//  Created by Tedi Konda on 3/2/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit
import SwiftyJSON


class ViewController: UITableViewController {
    var tempData = ["Ena's tail is apperantly OK", "MOB Class is awesome", "Pigs sighted flying"]
    
    //2. Create a variable that will carry the website's data outside of the scope
    //The SwiftyJSON gives us a JSON type
    
    var redditData: JSON?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. Connect to reddit API
        
        if let url = NSURL(string: "http://wwww.reddit.com/.json") {
            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: {
                (data, response, error) -> Void in
             
                /*
                
                Not needed anymore
                
                First way Tedi did this:
                let redditJson = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                
                let redditJson: AnyObject = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                
                
                let newRedditDict = redditJSon as? NSDictionary
                
                self.redditData = redditJson as? JSON

                */
                
                self.redditData = JSON(data: data!)
                
                print(self.redditData!)
                
                //6. Our local processes run faster than our network processes. We need to reload the data so our table view can correctly display the non-nil data instead of returning zero.
                self.tableView.reloadData()
                
                    
            })
            task.resume()
            
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //4. Change number of cells
        
        //This will count the number of articles (indexes) in the children array
        
        if self.redditData != nil {
            return self.redditData!["data"]["children"].count
        }
        return 0 //Return nothing if the data is nil
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
        if cell == nil  {
            
            //7. Changed style from .Default to .Subtitle
            cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "cell")
        }
        
        //5. Let's access the children array
        
        
        cell.textLabel?.text = self.redditData!["data"]["children"][indexPath.row]["data"]["title"].string
        
        let numberOfUps = self.redditData!["data"]["children"][indexPath.row]["data"]["ups"].int
        
        cell.detailTextLabel?.text = "Number of Ups: \(numberOfUps!)"
        
        return cell
    }
    
    //on click
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //8. We essentially have to figure out the URL for the article
        //Article -> Data -> URL
        
        if self.redditData != nil {
            let permalink = self.redditData!["data"]["children"][indexPath.row]["data"]["permalink"].string
            
            
            
            //we have to preappend the rest of the url to the permalink. The permalink is not a complete link
            //We also have to convert it into a URL
            
            
            
            let url = NSURL(string: "http://www.reddit.com" + permalink!)
            
    
            performSegueWithIdentifier("web", sender: NSURLRequest(URL: url!))
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let request = sender as? NSURLRequest {
            let destinationViewController = segue.destinationViewController as! WebViewController
            destinationViewController.request = request
        }
    }


}

