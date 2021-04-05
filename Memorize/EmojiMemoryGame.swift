//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Joel de Almeida Souza on 02/04/21.
//

import SwiftUI

class EmojiMemoryGame {
    var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃"]
        return MemoryGame<String>(numberOfPairsOfCards: 2) { pairIndex in return emojis[pairIndex]}
    }
    // MARK: - Acess to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
