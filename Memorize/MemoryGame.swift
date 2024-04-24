//
//  MemorizeGame.swift
//  Memorize
//
//  Created by luoyaokeng on 2024/4/22.
//
//  model

import Foundation

struct MemoryGame<CardContent>{
    
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards:Int, cardContentFactory: (Int) -> CardContent){
        cards = []
        for pairIndex in 0..<max(2,numberOfPairsOfCards){
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    func choose(_ card: Card){
        
    }
    
    mutating func shuffle(){
        cards.shuffle()
    }
    
    struct Card{
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
}
