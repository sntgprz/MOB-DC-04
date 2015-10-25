//
//  Deck.swift
//  Assessment 3
//
//  Created by Santiago Perez on 10/24/15.
//  Copyright © 2015 Tedi Konda. All rights reserved.
//

import Foundation
import UIKit



//This struct is used as framework for a deck of cards. It has methods that can be used to simulate a standard French card deck.


struct Deck {
    
    
    // Array to store the different values of cards in a deck
    
    let cardsInDeck = [

    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Jack",
    "Queen",
    "King",
    "Ace"
        
    ]
    
    //A function to generate a random card
    
    func randomCard() -> String {
        let arrayCount = UInt32(cardsInDeck.count)
        let randomNum = Int(arc4random_uniform(arrayCount))
        return self.cardsInDeck[randomNum]
    }
    
    //A function to convert the card string into a useful numerical value that can be utilized for game mechanics
    
    func convertCardValue(cardString: String) -> Int {
        
        if cardString == "Two" {
            return 2
        } else if cardString == "Three" {
            return 3
        } else if cardString == "Four" {
            return 4
        } else if cardString == "Five" {
            return 5
        } else if cardString == "Six" {
            return 6
        } else if cardString == "Seven" {
            return 7
        }else if cardString == "Eight" {
            return 8
        } else if cardString == "Nine" {
            return 9
        } else if cardString == "Ten" {
            return 10
        } else if cardString == "Jack" {
            return 10
        } else if cardString == "Queen" {
            return 10
        } else if cardString == "King" {
            return 10
        } else if cardString == "Ace" {
            return 11
        }
        
        return 100
    }
    
    /*
    Methods to Decide the Value of an Ace
    
    //Prompt the user that he needs to decide the value of his Ace
    
    
    func decideAceValue() {
        
    }
    
    */
    
    /*
    
    Dictionary Option - Could this work?
    
    var cardsInDeck = [
    
    "Two": 2,
    "Three": 3,
    "Four": 4,
    "Five": 5,
    "Six": 6,
    "Seven": 7,
    "Eight": 8,
    "Nine": 9,
    "Ten": 10,
    "Jack": 10,
    "Queen": 10,
    "King": 10,
    "Ace": 11
    
    ]
    
    */

    
}