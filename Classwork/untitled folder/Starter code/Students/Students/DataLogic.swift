//
//  DataLogic.swift
//  Students
//
//  Created by Santiago Perez on 11/16/15.
//  Copyright © 2015 Thomas Degry. All rights reserved.
//

import Foundation

import UIKit

import CoreData



class DataLogic {
    
    
    //I guess I have to include this for my method to work
    
    var appDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
    
    
    //Method to save data
    
    func saveData(nameToSave: String, locationToSave: String) {
        
        //Created a blank object from the Student class
        
        let moc = appDelegate.managedObjectContext
        
        let student = NSEntityDescription.insertNewObjectForEntityForName("Student", inManagedObjectContext: moc!) as! Student
        
        //Setting the properties for the pulled object
        
        student.name = nameToSave
        student.location = locationToSave
        
        do {
            try moc!.save()
        } catch _ {
            print("Could not save")
        }
        
    }
    
}


        