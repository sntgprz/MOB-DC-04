//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol Animal {
    var name: String { get }
    var fur: Bool { get }
}

//To get a property use get. To be able to change it later, use get

protocol Hunter {
    var vegetarian: Bool { get }
    var hasClaws: Bool { get }
}


//How to extend our protocol

extension Animal where Self: Hunter {
    //When we are conforming to an animal hunter, we can send these defaults
    var hasClaws: Bool { return true }
    var vegetarian: Bool { return false }
}

struct Tiger: Animal, Hunter {
    var name: String
    var fur: Bool = true
    var vegetarian: Bool = true
    var hasClaws: Bool = true
}

var simba = Tiger(name: "Simba", fur: true, vegetarian: false, hasClaws: true)


simba.vegetarian
simba.hasClaws

struct Mustafa: Animal, Hunter {
    var name: String
    var fur: Bool = true
    
    // Hunter variables come predefined because of our extension
}



//Let's do these with birds

protocol Bird {
    var name: String { get }
    var color: String { get}
}

protocol CanFly {
    var wings: Bool { get }
    func takeOff() -> String
}

protocol CanSwim {
    var swimmer: Bool {get}
}


struct Duck: Bird, CanFly, CanSwim {
    
    var name: String
    var color: String
    var wings: Bool
    var swimmer: Bool
    
    
    func takeOff() -> String {
        return "Flight mode engaged"
    }
    
}

var donald = Duck(name: "Donald", color: "White", wings: true, swimmer: true)

donald.name
donald.wings


//Trying extensions

extension Bird where Self: CanFly {
    var wings: Bool {return true}
    func takeOff() -> String {
        return "Flight mode engaged"
    }
}




