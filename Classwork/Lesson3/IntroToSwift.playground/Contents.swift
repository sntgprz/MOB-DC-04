// Lesson 03

//Swift is a strongly typed language, but also an inferred language.

/* this is a multiline comment! */

import UIKit
//Brings in our objects for Interface Builder

//Variable Types

//Type String
"This is a String"

//Type Integer
5

//Type Double or Float
//The double holds more digits - 64 bits. Doubles are more precise
//The float holds less digits - 32 bits
//Default is a double if type is not specified
5.43
23.8042

//Type Boolean
true
false

//Some Math
5 + 5
25 * 452895
34.5 * 10

//Operations

//Modulus operator - Percentage Sign. Returns a "Remainder"
10 % 3
9 % 3

//Bang Operator - Negator
!true

//Variables

//This is an interpreted variable (String)
var name = "Santiago"
name = "Simba"

//This is an interpreted variable (Number)
var num = 19
num = 3

//This is a typed variables
var location: String = "General Assembly"
var numberOfLife: Int = 42

/* Best Practices: Name variables with "Camel Casing"
justLikeThis
*/

var complexNum: Float = 3.149857498
var moreComplexNum: Double = 3.14983498734987

//Spacing is not as relevant in Swift
var    hello = "world"

//Constants - They don't change
let neverChanging = 54

//Mathematical Operation
numberOfLife + num

//Prints and starts a new line
print("Hello World")

//Print without adding a new line
print("hello with no new line", terminator: "")

name = "world"

//Interpolation - Inserting a computer value inside a string
print("hello \(name)", terminator: "")

//Everything inside the parenthesis becomes a computer expression
print("example sum \(5+5)")

//Concatination
"hello " + "world"

//Conditional statements

//If statements

var age = 60

if (age < 21) {
    //Inside these brackets is called a "Block"
    print("You cannot party!")
}else if (age > 21) && (age < 55) {
    print("You are good to go, but you get no discounts!")
}else {
    print("You get to party on a discount!")
}

//Loops


