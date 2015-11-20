//18 Nov 2015

import UIKit
import XCPlayground

// Let asnchronous code run in our playground

XCPSetExecutionShouldContinueIndefinitely()
// This will run querys run in the background asynchronously

if let url = NSURL(string: "http://www.twitter.com") {
    
    //Step 2: Create the task
    
    let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: {
        (data, response, error) -> Void in
        
        //Step 3: Do something with the data and see if there is an error
        if error == nil {
            
            
            //Byte Code Output
            print(data)
            
            //Step 3A: Convert From Byte Code to String
            let googleSource = NSString(data: data!, encoding: NSUTF8StringEncoding)
            
            print(googleSource)
            
            
            
            
            
        }else {
            print("There was an error in talking to the google")
        }
        
        
    })
    
    //Step 4: Resume/Start the task
    task.resume()
    
    //5. Paste this code into plist source code:
    
    /*
    <key>NSAppTransportSecurity</key>
    <dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
    </dict>
    */
    
}





if let redditUrl = NSURL(string: "https://www.reddit.com/json") {
    
    let task = NSURLSession.sharedSession().dataTaskWithURL(redditUrl, completionHandler: {
        (data, response, error) -> Void in
        
        let redditString = NSString(data: data!, encoding: NSUTF8StringEncoding)
    })
}




































