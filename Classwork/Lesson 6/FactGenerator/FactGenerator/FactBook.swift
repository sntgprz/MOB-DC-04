//
//  FactBook.swift
//  FactGenerator
//
//  Created by Santiago Perez on 10/14/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import Foundation

struct Factbook {
    var factsArray = [
    "People are mammals",
    "The sky is blue",
    "Ants stretch when they wake up in the morning",
    "It's always darkest before it's completely black",
    "One day the sun will explode",
    "The sun will be exploding for billions of years",
    "e=mc2",
    "On average it takes 66 days to form a new habit",
    "The state of Florida is bigger than England",
    "The fastest animal is the cheetah",
    "Birds are faster than cheetahs",
    "Tupac is alive"
    ]
    
    func randomFact() -> String {
        
        let arrayCount = UInt32(factsArray.count)
        let randomNum = Int(arc4random_uniform(arrayCount))
        return self.factsArray[randomNum]
    }
    
}