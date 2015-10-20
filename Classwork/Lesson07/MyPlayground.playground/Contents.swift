
//Santiago Perez
//Playground for Lesson 7

import UIKit


var mobClassDC = ["location": "DC", "classTime": "evening", "day1": "Monday", "day2": "Wednesday"]

var mobClassNY = ["location": "DC", "classTime": "evening", "day1": "Tues", "day2": "Thurs"]

mobClassDC["classTime"]


//method to count


mobClassDC.count

//Create an empty dictionary

var myEmptyDict = [String: String]()

var myOtherDictionary = Dictionary<
String, String>()

//Loop throught the keys of a dictionary

for i in mobClassDC.keys {
    print(i)
}


//Create a new key in the dictionary

mobClassNY["newKey"] = "new value"

mobClassNY.count

mobClassNY.removeValueForKey("newKey")

//Array

var myArray: [Int]



