//
//  CardGame.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import Foundation
import UIKit

protocol BlackJack {
    // Require a deal method
    // Require a first hand method
    
    func firstCard() -> String
    func secondCard() -> String
    
    func deal() -> String
}

class CardGame: BlackJack {
    
    //Properties
    var gameCanContinue: Bool = true
    var winner = ""
    
    //ACTION FUNCTIONS:
    
    //These functions will be tied into the interface buttons so the user can interact with the program
    
    func firstCard() -> String {
        
        //This function deals the first card from the initial two cards
        
        //Create a Deck from the template structure
        let myDeck = Deck()
        
        return myDeck.randomCard()
        
    }
    
    func secondCard() -> String {
        
        //This function deals the second card from the initial two cards
        
        let myDeck = Deck()
        
        return myDeck.randomCard()
    }
    
    func deal() -> String {
        let myDeck = Deck()
        
        return myDeck.randomCard()
        
    }
    
    func stay() {
        
        //The player does not want to be dealt any more cards - Display Results
        
        
    }
    
    //DECISION MAKING FUNCTIONS:
    
    //1 function decides if the game should continue
    //1 function decides the winner of the game
    //1 function displays the winner
    
    //1 function for the first turn logic
    //1 function to return first turn blackjack
    
    func checkIfGameCanContinue(playerCount: Int, otherPlayerCount: Int) {
        
        if playerCount >= 21 || playerCount > otherPlayerCount {
            self.gameCanContinue = false
        } else {
            self.gameCanContinue = true
        }
    }
    
    func decideWinner(player1Count: Int, player2Count: Int) {
        
            if player1Count == player2Count {
                self.winner = "Nobody"
            } else if player2Count > 21 {
                self.winner = "Player 1"
            } else if player2Count > player1Count && player2Count <= 21 {
                self.winner = "CPU"
            } else {
                self.winner = "error"
        }
    }
    
    func decideWinnerSinglePlayer (player1Count: Int) {
        if player1Count > 21 {
            self.winner = "CPU"
        } else if player1Count == 21 {
            self.winner = "Player 1"
        }
    }
    
    func displayWinner(winner: String) -> String {
        
        return ("\(winner) wins")
    }
    
    func firstTurnLogic(gameStatus: Bool, playerCount: Int) {
        if (gameCanContinue == false) && (playerCount == 21) {
            self.firstTurnBlackJack()
        }
    }
    
    func firstTurnBlackJack() -> String {
        return "Blackjack! You win!"
    }
    
    
    func split() {
        //To be implemented in the future
    }
    
    func bet() {
        //To be implemented in the future
    }
    
    
    
    
}