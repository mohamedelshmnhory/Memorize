//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by mohamed nasser on 09/05/2022.
//

import SwiftUI



class EmojiMemoryGame: ObservableObject{
    typealias Card  = MemoryGame<String>.Card
    
    private static let emojis = ["🚒","🚡","🚘","🚲","🛵","🏍","🛺","🚨","🚔","🚍","🚖","🚠","🚟","🚃","🚋","🚞","🚝","🚄","🚅","🚈","🚂","🚆","🚜","🚛","🚚","🚀","🛸","🚁","🛶"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]}
    }
    
   @Published private var model = createMemoryGame()
    
    var cards: Array<Card>{
        return model.cards
    }
    
    // Mark: - Intent(s)
    
    func choose(_ card: Card){
       
        model.choose(card)
    }
}
