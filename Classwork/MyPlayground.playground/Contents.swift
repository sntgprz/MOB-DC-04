//: Playground - noun: a place where people can play

import UIKit

//FUNCTIONS

//DRY - Don't Repeat Yourself
//KIS - Keep It Simple

//Functions are camel-cased

func sayHello() {
    print("hello world")
    print("Running function")
}

sayHello()
sayHello()


func sayHelloName(name: String) {
    print("hello, \(name)")
}
//Swift cannot infer the type of parameter; we have to tell Swift the types.

sayHelloName("Jeff")

//pass multiple parameters to functions
func sayHelloNameAndLastName(firstName: String, lastName: String, age: Int) {
    print("Your first name is \(firstName)")
    print("Your first name is \(lastName)")
}

sayHelloNameAndLastName("Santiago", "Perez", 5)

//


//Function that prints the area of a square rectangle

func areaRect(side1: Int, side2: Int) {
    var area: Int = side1 * side2
    print("The area of this rectangle is \(area)")
}


areaRect(12, 16)
areaRect(2, 3)



//After the firts parameter, you have to define the value of the parameter you are entering
