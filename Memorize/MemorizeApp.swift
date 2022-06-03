//
//  MemorizeApp.swift
//  Memorize
//
//  Created by mohamed nasser on 15/01/2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
