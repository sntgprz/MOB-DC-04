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


//Function that prints the area of a square rectangle

func areaRect(side1: Int, side2: Int) {
    var area: Int = side1 * side2
    print("The area of this rectangle is \(area)")
}


areaRect(12, 16)
areaRect(2, 3)



//IMPORTANT:
// After the first parameter, you have to define the value of the parameter you are entering


func getArea(height: Double, width: Double) -> Double{
    let area: Double = height * width
    return area
    //This return statement makes the function stop running
    
    //print("This will never print)")
}

//The arrow means that the function is expected to return a Double

func displayArea(area: Double) {
    print("The area is \(area)")
}


//Let's try the two functions above

var mySquare = getArea(25 , 25)
var myRectangle = getArea(3 , 4)

displayArea(mySquare)

displayArea(myRectangle)


//The way we can split the responsibilities of our code is by adding returns to our functions




//You can pass arguments as a nil.


