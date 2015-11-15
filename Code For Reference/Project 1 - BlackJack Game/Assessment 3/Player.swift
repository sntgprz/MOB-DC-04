//
//  Player.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import Foundation

struct Player {
    
    var currentCount: Int
    var hand: [Int]
    
    
    mutating func updateCurrentCount(playerHand: [Int]) {
        //Adds the elements in the "Hand" Array
        
        let count = playerHand.count
        
        var arraySum = 0
        
    
        for i in 1...count {
            
            arraySum += playerHand[i-1]
            
        }
        
        self.currentCount = arraySum
        
    }
}