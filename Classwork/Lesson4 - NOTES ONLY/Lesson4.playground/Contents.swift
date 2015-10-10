//: Playground - noun: a place where people can play

//Lesson 4 Code

import UIKit

//This value that the user is going to add is unknown, but we know he will add it eventually. So we just add a question mark - an optional
var name: String?

// nil stands for no value

name = "Santiago"

print(name)

print("Your name is \(name)")

//We have to "unrap" the optional. It is not shown the proper way.

// A Bang operator would remove the optional, but this is bad practice
// A bang at the end means "override" in Swift

//First way
    print("your name is \(name!)")

//To ways to properly Unrap

//Second way
if name != nil {
    print("your name is \(name!)")
}else {
    print("I don't know your name yet")
}


//OR
if name == nil {
    print("I don't know your name yet")
}else {
    print("your name is \(name!)")
}


//Third way --- PREFERRED WAY
//embed in a temporary variable
if let myname = name {
    print("Your name is \(myname)")
}
//Note that the myname constant exists only here




let age = 45

name
age
print("your name is \(name)")





































//
