//
//  UsersViewController.swift
//  ParseStarterProject-Swift
//
//  Created by Santiago Perez on 11/25/15.
//  Copyright © 2015 Parse. All rights reserved.
//

import UIKit

import Parse

class UsersViewController: UIViewController {
    
    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!

    @IBOutlet weak var emailTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func registerButton(sender: AnyObject) {
        
        var user = PFUser()
        user.username = self.usernameTF.text!
        user.password = self.passwordTF.text!
        user.email = self.emailTF.text!
        
        
        
        user.signUpInBackgroundWithBlock {
            (succeeded: Bool, error: NSError?) -> Void in
            if let error = error {
                let errorString = error.userInfo["error"] as? NSString
                print(errorString)
            } else {
                print("User created successfully")
            }
        }
        
    }
    
    @IBAction func loginButton(sender: AnyObject) {
    
        PFUser.logInWithUsernameInBackground(self.usernameTF.text!, password:self.usernameTF.text!) {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                // Do stuff after successful login.
            } else {
                // The login failed. Check error to see why.
            }
        }
        
    }
    
    @IBAction func signOutButton(sender: AnyObject) {
        
        PFUser.logOut()
        var currentUser = PFUser.currentUser() // this will now be nil
        print("User is signed out")
    }
    
    @IBAction func checkIfLoggedInButton(sender: AnyObject) {
        
        //Add this on app delegate
        
        //Set starting view controller depending on whether the user is logged in or not
        
        var currentUser = PFUser.currentUser()
        if currentUser != nil {
            print("user is logged in")
        } else {
           print("user is NOT logged in")
        }
    }

}
