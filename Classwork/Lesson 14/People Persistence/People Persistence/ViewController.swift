//
//  ViewController.swift
//  People Persistence
//
//  Created by Santiago Perez on 11/16/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

//Import core data wherever you work

import CoreData

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    
    //1. The first thing we have to do with core data is reference the app delegate
    
    var appDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveDataButton(sender: AnyObject) {
        
        //2. We mostly reference the managedObjectContext property in our App Delegate
        
        let moc = appDelegate.managedObjectContext
        
        let person = NSEntityDescription.insertNewObjectForEntityForName("Person", inManagedObjectContext: moc) as! Person
        
        //3. We just created a blank object. Now we have to set its properties
        
        person.name = self.nameTextField.text!
        
        person.age = Int32(self.ageTextField.text!)!
        
        person.gender = self.genderTextField.text!
        
        do {
            try moc.save()
        } catch _ {
            print("Could not save")
        }
        
        //Bad practice:
        //try! moc.save()
        
        
        
    }
    

    @IBAction func loadDataButton(sender: AnyObject) {
       
        sortTool()
        
        //pullSpecific()
        
        //pullEverything()
    }
    
    
    //For a specific record pull
    
    func pullSpecific() {
        
        let moc = appDelegate.managedObjectContext
        
        let fetch = NSFetchRequest(entityName: "Person")
        
        //Predicate: The line of code below. This is our filtering option
        let nameFilter = NSPredicate(format: "name contains %@", self.searchTextField.text!)
        
        fetch.predicate = nameFilter
        
        if let people: [Person] = try! moc.executeFetchRequest(fetch) as? [Person] {
            
            print(people)
        }
        
        
        if let people: [Person] = try! moc.executeFetchRequest(fetch) as? [Person] {
            
            for person in people {
                
                print(person.name)
                print(person.age)
                print(person.gender)
                
                // Right now our output is just printing, we can adjust our output to whatever we like
            }
        }
        
    }
    
    //To pull all
    
    func pullEverything() {
        
        
        let moc = appDelegate.managedObjectContext
        
        let fetch = NSFetchRequest(entityName: "Person")
        
        if let people: [Person] = try! moc.executeFetchRequest(fetch) as? [Person] {
        
            print(people)
        }
        
        //try! = Run this query no matter what
        //as? [Person] = typecast it as an array of people
        
        /* Alternative:
        
        do {
        let people: [Person] = try! moc.executeFetchRequest(fetch) as! [Person]
        print(people)
        
        } catch _ {
        print("could not load")
        }
        */
        
        if let people: [Person] = try! moc.executeFetchRequest(fetch) as? [Person] {
        
            for person in people {
        
                print(person.name)
                print(person.age)
                print(person.gender)
        
        // Right now our output is just printing, we can adjust our output to whatever we like
            }
        }
        
    }
   
    
    
    //Sorting
    
    func sortTool() {
        
        let moc = appDelegate.managedObjectContext
        
        let fetch = NSFetchRequest(entityName: "Person")
        
        //Predicate: The line of code below. This is our filtering option
        let nameFilter = NSPredicate(format: "name contains %@", self.searchTextField.text!)
        
        let sortByAge = NSSortDescriptor(key: "age", ascending: true)
        
        fetch.sortDescriptors = [sortByAge]
        fetch.predicate = nameFilter
        
    
        if let people: [Person] = try! moc.executeFetchRequest(fetch) as? [Person] {
            
            print(people)
        }
        
        
        if let people: [Person] = try! moc.executeFetchRequest(fetch) as? [Person] {
            
            for person in people {
                
                print(person.name)
                print(person.age)
                print(person.gender)
                
                // Right now our output is just printing, we can adjust our output to whatever we like
            }
        }
        
    }
    
    
}

