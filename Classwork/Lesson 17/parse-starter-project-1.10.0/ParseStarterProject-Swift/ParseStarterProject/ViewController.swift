/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        
        //Test
        
        //What is happening here? - How Parse works
        
        //1. Create an Object
        let testObject = PFObject(className: "TestObject")
        
        //2. Access the attribute with a key in a dictionary
        testObject["foo"] = "bar"
        
        //3. Feedback - Contingent upon success
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            print("Object has been saved.")

        */
        
        
        // SP - How to load all the jobs
        
        var query = PFQuery(className:"Jobs")
        
        //Optional "search"
        //query.whereKey("playerName", equalTo:"Sean Plott")
        
        query.findObjectsInBackgroundWithBlock {
            (objects: [PFObject]?, error: NSError?) -> Void in
            
            if error == nil {
                // The find succeeded.
                print("Successfully retrieved \(objects!.count) job(s).")
                // Do something with the found objects
                if let jobs = objects {
                    for job in jobs {
                        print(job["title"])
                    }
                }
            } else {
                // Log details of the failure
                print("Error: \(error!) \(error!.userInfo)")
            }
        }
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    
    }
}
