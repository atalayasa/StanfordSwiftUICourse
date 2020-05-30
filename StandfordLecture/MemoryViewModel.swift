//
//  MemoryViewModel.swift
//  StandfordLecture
//
//  Created by Atalay Aşa on 30.05.2020.
//  Copyright © 2020 Atalay Asa. All rights reserved.
//

import Foundation


class MemoryViewModel {
    var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        var emojis = ["😀", "😍", "🤣", "🥵", "👻"]
        let randomArrayCount = Int.random(in: 2..<emojis.count + 1)

        var randomEmojis = [String]()
        
        for _ in 0..<randomArrayCount {
            let randomElement = emojis.randomElement()!
            randomEmojis.append(randomElement)
            emojis.removeAll { $0 == randomElement }
        }
        
        return MemoryGame<String>(pairOfCards: randomEmojis.count) { (pairIndex) -> String in
            return randomEmojis[pairIndex]
        }
    }
    
    var cards: [MemoryGame<String>.Card] {
        model.cards
    }
    
    
    
}
