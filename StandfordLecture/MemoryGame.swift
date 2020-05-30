//
//  MemoryGame.swift
//  StandfordLecture
//
//  Created by Atalay Aşa on 30.05.2020.
//  Copyright © 2020 Atalay Asa. All rights reserved.
//

import Foundation

struct MemoryGame<Content> {
    var cards: [Card]
    
    init(pairOfCards: Int, cardContentFactory: (Int) -> Content) {
        cards = Array<Card>()
        
        for pairIndex in 0..<pairOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
        
        cards.shuffle()
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: Content
        var id: UUID = UUID()
    }
}
