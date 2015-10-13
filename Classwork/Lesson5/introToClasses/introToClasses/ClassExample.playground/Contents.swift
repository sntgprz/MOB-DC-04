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
        
        if self.operational == true {
            self.milesDriven += distance
        }else {
            print("You can't drive, your car is not operational")
        }
    }
    
    
    //method for a flat tire
    
    func flatTire() {
        self.operational = false
    }
    
    func carStatus() -> String {
        //We want to return a car status back to the user
        
        //Use a ternary operator to let the user know if the car is operational or not
        let operationalStatement = self.operational ? "" : "not"
        
        return "Your car has driven \(operationalStatement) and has driven \(self.milesDriven) miles"
        
        //remember this can be done with an if statement also
    }
}

//New class for Lamborghini - we actually don't want to have more than one class in a single file
//we want it to inherit from another class. We do this with a colon

//A sub class inherits from a class through the: (Subclass : Superclass)

class Lamborghini: Car {
    var turboMode: Bool
    
    init(turboMode: Bool = false, wheels: Int) {
        //By default, we want the Lamborghini to not be in turbo mode
        self.turboMode = turboMode
        
        //We need to initialize the properties from the parent class in this subclass
        super.init(doors: 4, engine: "8 cylinder", speed: 500, used: false, wheels: wheels)
        
    }
    
    
}





//let's create an instance of class Car
var tedisCar = Car(doors: 4, engine: "6 cylinders", speed: 400, used: true, wheels: 4)
tedisCar.speed

//Modified the property 'speed' - this re-sets
tedisCar.speed = 500

var patsCar = Car(doors: 4, engine: "4 cylinders", speed: 200, used: false, wheels: 3)


//Calling the METHOD to upgrade speed
tedisCar.upgradeSpeed(600)


//checking if speed has been upgraded
tedisCar.speed





var tedisCarStatus = tedisCar.carStatus()

tedisCar.milesDriven
tedisCar.drive(210)
tedisCar.milesDriven

tedisCar.drive(100)
tedisCar.milesDriven



//If we create an object for a Lamborghini, we don't have to set all of those values, because we set them inside a method already


var diablo = Lamborghini(wheels: 5)

diablo.engine
diablo.wheels


var hazCar = tedisCar
hazCar.milesDriven

hazCar.milesDriven = 100

tedisCar.milesDriven

//hazCar acts as a pointer.
//both hazCar and tedisCar both becomes pointer to an object. This is in SWIFT ONLY. Not all OOP


//ARRAYS

var myFirstArray: [Int] = [2, 5, 10, 15]

//not good practice, but cmd + click to Array and see what happens

var mySecondArray: Array = [2,5]


//Use the count method
myFirstArray.count

//the append method adds an 
myFirstArray.append(25)

//Create an empty array
var myEmptyArray: [String] = []

myFirstArray[4]

//To Check stuff in an array, use a for loop

//1
for i in myFirstArray {
    print(i)
}


//2
for i in myEmptyArray {
    print(i)
}


//3
for i in myEmptyArray {
    print("Current value is \(i)")
}

//Takeaway