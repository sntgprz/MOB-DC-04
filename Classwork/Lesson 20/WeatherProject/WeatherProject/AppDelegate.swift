//
//  AppDelegate.swift
//  WeatherProject
//
//  Created by Santiago Perez on 12/7/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let socialAction = UIMutableUserNotificationAction()
        socialAction.identifier = "SHARE"
        socialAction.title = "Share weather"
        socialAction.activationMode = .Background
        socialAction.destructive = false
        socialAction.authenticationRequired = false
        
        let dismissAction = UIMutableUserNotificationAction()
        dismissAction.identifier = "DISMISS"
        dismissAction.activationMode = .Background
        dismissAction.destructive = true //Now we are dismissing
        dismissAction.title = "Dismiss"
        
        let weatherActionCat = UIMutableUserNotificationCategory()
        weatherActionCat.identifier = "GA_WEATHER_CATEGORY"
        weatherActionCat.setActions([socialAction, dismissAction], forContext: .Default)
        weatherActionCat.setActions([socialAction, dismissAction], forContext: .Minimal)
        
        
        
        application.registerUserNotificationSettings(UIUserNotificationSettings(forTypes: [.Alert, .Badge, .Sound], categories: NSSet(array: [weatherActionCat]) as! Set<UIUserNotificationCategory>))
        
        //we have to add a listener to our app in the background
        func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forLocalNotification notification: UILocalNotification, completionHandler: () -> Void) {
            
            
            switch (identifier!) {
                case "SHARE":
                print("Share logic here")
                case "DISMISS":
                print("Dismiss logic here")
                default:
                print("Nothing's really happening")
                
                
                //#SP You can also update your badge logic here
            }
            completionHandler()
        
        }
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

