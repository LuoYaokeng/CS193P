//
//  MemorizeApp.swift
//  Memorize
//
//  Created by luoyaokeng on 2024/4/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene{
        WindowGroup{
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
