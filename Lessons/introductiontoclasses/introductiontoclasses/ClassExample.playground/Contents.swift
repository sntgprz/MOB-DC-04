//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Car {
    var speed: Float
    var engine: String
    var used: Bool
    var doors: Int
    var wheels: Int
    var milesDriven: Int
    
    init(doors: Int, engine: String, speed: Float, used: Bool, wheels: Int, milesdriven: Float: 0) {
        self.doors = doors
        self.engine = engine
        self.speed = speed
        self.used = used
        self.wheels = wheels
        self.milesDriven = milesDriven
        
    }
    
}

/*
var tedisCar: Car = Car(doors: 4, engine: "6 cylinders", speed: 400, used: true, wheels: 4)
*/


func upgradeSpeed(newSpeed: Float) {
    
    self.speed = newSpeed
    print("Your car speed has ben upgraded to \(newSpeed)")
}