//: Playground - noun: a place where people can play

import UIKit

var animal = "dog"


//Switch Statements

switch animal {
    
case "dog", "wolf":
    print("You belong to the canine class")
case "cat", "tiger":
    print("You belong to the feline class")
case "human":
    print("You belong to the homosapien class")
    //break
default:
    print("I don't know what you are")
}

//You can stop the "checking" with a break.





//Enumeration


enum GACampus {
    case DC
    case NY
    case SF
    case LA
    case HK
    case TX
}

var myCampus: GACampus = GACampus.DC

switch myCampus {
case .NY:
    print("You go to NY.")
case .DC:
    print("You are the best mobile class ever")
default:
    print("I don't know where you are")
}