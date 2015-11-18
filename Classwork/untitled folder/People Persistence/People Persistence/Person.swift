//
//  Person.swift
//  People Persistence
//
//  Created by Santiago Perez on 11/16/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import Foundation

import CoreData

class Person: NSManagedObject {
    @NSManaged var name: String
    @NSManaged var age: Int32
    @NSManaged var gender: String
    
    //Prefixing all of our properties with an NSManaged Prefix. This means that these properties in our object are tied to our core data attributes
    
    // var height: Float  - This would not be tied in to our core data attributes
    
    
    
}