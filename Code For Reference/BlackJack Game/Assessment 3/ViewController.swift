//
//  ViewController.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/22/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // BlackJack game: Create a a game of Blackjack
    // ************* Baseline requirements:
    // ** Set up Player class and CardGame class in their respective provided files. Follow the protocol rules for the CardGame class.
    // When card game first starts, a new player is generated and handed out 2 cards (between 1 and 11). Hint: generate 2 random numbers and add them together
    // A value for the CPU is also generated between 12 and 21 (random Int)
    // When the green view is double tapped (tap gesture recognizer), generate a new card (between 1 and 11) for the player, and add it to their score
    // If the total adds up to over 21, change the label text to "Game over, you lose!" and remove the ability for the player to keep tapping for cards
    // If the player wishes to not get dealt any more cards, the player can swipe right to end game (swipe gesture recognizer)
    // When the player ends the game, present the CPU score and present winner determined from compre comparison
    
    // Bonus: Create a button to play a new game. //Done
    // Bonus 2: Player can start with a pool of money (selected through a text field) and make bets for each game (through a text field again). If player reaches <= 0, don't allow them to play any more games.
    // Bonus 3: When handing out cards, display the actual value to the user. If the card is an Ace, let the user select either 1 or 11.
    
    
    
    // --- Outlets for Player 1 ---
    
    @IBOutlet weak var player1Card1Label: UILabel!
    @IBOutlet weak var player1Card2Label: UILabel!
    @IBOutlet weak var player1Card3Label: UILabel!
    @IBOutlet weak var player1Card4Label: UILabel!
    @IBOutlet weak var player1Card5Label: UILabel!
    @IBOutlet weak var player1Card6Label: UILabel!
    @IBOutlet weak var player1Card7Label: UILabel!
    
    
    @IBOutlet weak var player1CountDisplay: UILabel!
    
   
    // --- Outlets for Player 2 / CPU ---
    
    @IBOutlet weak var player2Card1Label: UILabel!
    @IBOutlet weak var player2Card2Label: UILabel!
    @IBOutlet weak var player2Card3Label: UILabel!
    @IBOutlet weak var player2Card4Label: UILabel!
    @IBOutlet weak var player2Card5Label: UILabel!
    @IBOutlet weak var player2Card6Label: UILabel!
    @IBOutlet weak var player2Card7Label: UILabel!
    
    @IBOutlet weak var player2CountDisplay: UILabel!
    

    // --- Other Outlets ----
    
    @IBOutlet weak var mainLabel: UILabel!
    
    // --- Load View ---

    @IBOutlet weak var redBox: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // --- Set up all classes and structs -----
    
    var myCardGame = CardGame()
    var player1 = Player(currentCount: 0, hand: [])
    var player2 = Player(currentCount: 0, hand: [])
    
    var myDeck = Deck() //Used only for one specific method
    
    var player2HiddenCard = ""

    
    
    
    // --- New Game / Hand ---
    
    @IBAction func newHandButton(sender: AnyObject) {
        
        //Reset counts, hands, and everything. Basic cleanup.
        
        self.myCardGame.gameCanContinue = true
        self.myCardGame.winner = ""
        
        self.player1.currentCount = 0
        self.player2.currentCount = 0
        
        self.player1.hand = []
        self.player2.hand = []
        
        self.mainLabel.text = "BlackJack"
        
        player2HiddenCard = ""
        
        
        //Deal to Player 1:
        self.player1Card1Label.text = myCardGame.firstCard()
        self.player1Card2Label.text = myCardGame.secondCard()
        
        
        //Convert the card strings into ints and update the player's hand
        player1.hand.append(myDeck.convertCardValue(player1Card1Label.text!))
        player1.hand.append(myDeck.convertCardValue(player1Card2Label.text!))
        
        player1.updateCurrentCount(player1.hand)
        
        //Display Count
        self.player1CountDisplay.text = String(player1.currentCount)
        
        
        //'Hide' all other labels
        
        self.player1Card3Label.text = ""
        self.player1Card4Label.text = ""
        self.player1Card5Label.text = ""
        self.player1Card6Label.text = ""
        self.player1Card7Label.text = ""
        
        //Check if game can continue, and check for a blackjack
        myCardGame.checkIfGameCanContinue(player1.currentCount, otherPlayerCount: 10000)
        
        if player1.currentCount == 21 {
            self.mainLabel.text = myCardGame.firstTurnBlackJack()
        }
        
        //Deal to Player 2, and hide one card for him.
        self.player2Card1Label.text = myCardGame.firstCard()
        self.player2Card2Label.text = "Hidden"
        
        player2HiddenCard = myCardGame.secondCard()
        
        //Convert the card strings into ints and update the player's hand
        player2.hand.append(myDeck.convertCardValue(player2Card1Label.text!))
        player2.hand.append(myDeck.convertCardValue(player2HiddenCard))
        
        player2.updateCurrentCount(player2.hand)
        
        //Display Player 2's Count - First Card Only
        
        self.player2CountDisplay.text = String(myDeck.convertCardValue(player2Card1Label.text!))
    
        //'Hide' all other labels
        self.player2Card3Label.text = ""
        self.player2Card4Label.text = ""
        self.player2Card5Label.text = ""
        self.player2Card6Label.text = ""
        self.player2Card7Label.text = ""
        
    }
    
    
    // -- Double Tap / Deal Card ---
    @IBAction func dealCardGesture(sender: AnyObject) {
        
        if (myCardGame.gameCanContinue == true) && (player1.currentCount != 21) {
            
            //Where does each card deal?
            
                if player1.hand.count < 3 {
                    player1Card3Label.text = myCardGame.deal()
                    player1.hand.append(myDeck.convertCardValue(player1Card3Label.text!))
                    player1.updateCurrentCount(player1.hand)
                    self.player1CountDisplay.text = String(player1.currentCount)
                    
                    //Check Status
                    self.myCardGame.checkIfGameCanContinue(player1.currentCount, otherPlayerCount: player1.currentCount)
                    if self.myCardGame.gameCanContinue == false {
                        self.myCardGame.decideWinnerSinglePlayer(player1.currentCount)
                        self.mainLabel.text = myCardGame.displayWinner(self.myCardGame.winner)
                    }
                    
                }else if player2.hand.count < 4 {
                    player1Card4Label.text = myCardGame.deal()
                    player1.hand.append(myDeck.convertCardValue(player1Card4Label.text!))
                    player1.updateCurrentCount(player1.hand)
                    self.player1CountDisplay.text = String(player1.currentCount)
                    
                    //Check Status
                    self.myCardGame.checkIfGameCanContinue(player1.currentCount, otherPlayerCount: player1.currentCount)
                    if self.myCardGame.gameCanContinue == false {
                        self.myCardGame.decideWinnerSinglePlayer(player1.currentCount)
                        self.mainLabel.text = myCardGame.displayWinner(self.myCardGame.winner)
                    }
                }else if player2.hand.count < 5 {
                    player1Card5Label.text = myCardGame.deal()
                    player1.hand.append(myDeck.convertCardValue(player1Card5Label.text!))
                    player1.updateCurrentCount(player1.hand)
                    self.player1CountDisplay.text = String(player1.currentCount)
                    
                    //Check Status
                    self.myCardGame.checkIfGameCanContinue(player1.currentCount, otherPlayerCount: player1.currentCount)
                    if self.myCardGame.gameCanContinue == false {
                        self.myCardGame.decideWinnerSinglePlayer(player1.currentCount)
                        self.mainLabel.text = myCardGame.displayWinner(self.myCardGame.winner)
                    }
                }
            
        }
        
    }
    
    // -- Swipe Right / Stay ---
    @IBAction func stayGesture(sender: AnyObject) {
        
        if myCardGame.gameCanContinue == true {
            

            //Reveal player 2's hidden card
            
            
            self.player2Card2Label.text = String(self.player2HiddenCard)
            self.player2CountDisplay.text = String(self.player2.currentCount)
            
            //Check if player 2's count beats player 1 before dealing cards
            
            self.myCardGame.checkIfGameCanContinue(player2.currentCount, otherPlayerCount: player1.currentCount)
                if self.myCardGame.gameCanContinue == false {
                    self.myCardGame.decideWinner(player1.currentCount, player2Count: player2.currentCount)
                    self.mainLabel.text = myCardGame.displayWinner(self.myCardGame.winner)
                }
            
            //Deal remaining cards for player 2
            
            //Conditions to deal
            while ((player2.currentCount < 17) || (player1.currentCount > player2.currentCount)) && (myCardGame.gameCanContinue == true) {
            
            
                if player2.hand.count < 3 {
                    player2Card3Label.text = myCardGame.deal()
                    player2.hand.append(myDeck.convertCardValue(player2Card3Label.text!))
                    player2.updateCurrentCount(player2.hand)
                    self.player2CountDisplay.text = String(player2.currentCount)
                
                    //Check Status
                    self.myCardGame.checkIfGameCanContinue(player2.currentCount, otherPlayerCount: player1.currentCount)
                    if self.myCardGame.gameCanContinue == false {
                        self.myCardGame.decideWinner(player1.currentCount, player2Count: player2.currentCount)
                        self.mainLabel.text = myCardGame.displayWinner(self.myCardGame.winner)
                    }
                    
                }else if player2.hand.count < 4 {
                    player2Card4Label.text = myCardGame.deal()
                    player2.hand.append(myDeck.convertCardValue(player2Card4Label.text!))
                    player2.updateCurrentCount(player2.hand)
                    self.player2CountDisplay.text = String(player2.currentCount)
                    
                    //Check Status
                    self.myCardGame.checkIfGameCanContinue(player2.currentCount, otherPlayerCount: player1.currentCount)
                    if self.myCardGame.gameCanContinue == false {
                        self.myCardGame.decideWinner(player1.currentCount, player2Count: player2.currentCount)
                        self.mainLabel.text = myCardGame.displayWinner(self.myCardGame.winner)
                    }
                    
                }else if player2.hand.count < 5 {
                    
                    player2Card5Label.text = myCardGame.deal()
                    player2.hand.append(myDeck.convertCardValue(player2Card5Label.text!))
                    player2.updateCurrentCount(player2.hand)
                    self.player2CountDisplay.text = String(player2.currentCount)
                    
                    //Check Status
                    self.myCardGame.checkIfGameCanContinue(player2.currentCount, otherPlayerCount: player1.currentCount)
                    if self.myCardGame.gameCanContinue == false {
                        self.myCardGame.decideWinner(player1.currentCount, player2Count: player2.currentCount)
                        self.mainLabel.text = myCardGame.displayWinner(self.myCardGame.winner)
                    }
                    
                }else {
                    //Check Status Only
                    self.myCardGame.checkIfGameCanContinue(player2.currentCount, otherPlayerCount: player1.currentCount)
                    if self.myCardGame.gameCanContinue == false {
                        self.myCardGame.decideWinner(player1.currentCount, player2Count: player2.currentCount)
                        self.mainLabel.text = myCardGame.displayWinner(self.myCardGame.winner)
                    }
                    
                
                } //End ifs
                
            } //End while loops
            
            player2.currentCount = 0 //safely reset count for loop purposes
            
        
        } //End if
        
    } //end ib action
  
    
    // -- ACE CARD DECISION MAKING ---
    /*
    @IBAction func makeAce11Gesture(sender: AnyObject) {
        
    }
    
    
    @IBAction func makeAceOneGesture(sender: AnyObject) {
        
    }
    
    */
    

}

