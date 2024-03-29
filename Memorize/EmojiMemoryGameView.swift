//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by mohamed nasser on 15/01/2022.
//

import SwiftUI

struct EmojiMemoryGameView: View {
   @ObservedObject var game: EmojiMemoryGame
        
    var body: some View {
       
            ScrollView{ LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                ForEach(game.cards) {
                    card in CardView(card: card)
                    .aspectRatio(2/3, contentMode: .fit)
                    .onTapGesture {
                        game.choose(card)
                    }   
                    }
                }
            }
            .foregroundColor(.red)
            .padding(.horizontal)
            
        
    }
    
}



struct CardView : View {
    let card : MemoryGame<String>.Card
   
    var body: some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
                
            } else if card.isMatched {
                shape.opacity(0)
            } else {
                    RoundedRectangle(cornerRadius: 20)
                            .fill(.red)
                }
            
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
   
    static var previews: some View {
        let game =   EmojiMemoryGame()
        Group {
            EmojiMemoryGameView(game: game)
                .preferredColorScheme(.dark)
        }
    }
}
