//
//  MemorizeGame.swift
//  Memorize
//
//  Created by luoyaokeng on 2024/4/22.
//

import Foundation

struct MemorizeGame<CardContent>{
    
    var cards:Array<Card>
    
    func choose(card:Card){
        
    }
    
    struct Card{
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
