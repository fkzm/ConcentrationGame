//
//  Card.swift
//  NewConcentration
//
//  Created by fatemeh on 10/28/18.
//  Copyright © 2018 Fateme' Kazemi. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier : Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        Card.identifierFactory += 1
        return Card.identifierFactory 
    }
    
    init(identifier : Int) {
        self.identifier = Card.getUniqueIdentifier()
    }
}
