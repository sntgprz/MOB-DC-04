//: Playground - noun: a place where people can play

import UIKit

//Class best practices
//each car has its own file
//class names should always start with a capital letter

class Car {
    //Class properties always defined at the top
    var doors: Int
    var engine: String
    var speed: Float
    var used: Bool
    var wheels: Int
    var milesDriven: Float
    var operational: Bool
    
    //the program yells at us because we have no defaults in the program
    //we do this through an initializer function
    
    //For now lets have the user import everything
    
    //Initializer: What the user inputs when creating an instance of the class, and/or setting the class defaults
    init(doors: Int, engine: String, speed: Float, used: Bool, wheels: Int, milesDriven: Float = 0, operational: Bool = true) {
        
        //Now we either have to make the variables optionals, but give them values
        //We have to get the user input and pass it to the variables defined at first
        
        
        //self.doors references the doors variable at the top of the class and doors references the user input doors parameter
        
        self.doors = doors
        self.engine = engine
        self.speed = speed
        self.used = used
        self.wheels = wheels
        self.milesDriven = milesDriven
        self.operational = operational
        
        
        //It is good practice to make these names the same name
    }
    
    func upgradeSpeed(newSpeed: Float) {
        self.speed = newSpeed
        print("Your car's speed has been upgraded to \(newSpeed)")
    }
    
    func drive(distance: Float) {
        // +=replaces self.milesDriven + distance
        self.milesDriven += distance
    }
    
    
    //method for a flat tire
    
    func flatTire() {
        self.operational = false
    }
}



//let's create an instance of class Car

var tedisCar = Car(doors: 4, engine: "6 cylinders", speed: 400, used: true, wheels: 4)
tedisCar.speed

//Modified the property 'speed' - this re-sets
tedisCar.speed = 500

var patsCar = Car(doors: 4, engine: "4 cylinders", speed: 200, used: false, wheels: 3)

tedisCar.upgradeSpeed(600)

tedisCar.speed








