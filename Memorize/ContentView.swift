//
//  ContentView.swift
//  Memorize
//
//  Created by luoyaokeng on 2024/4/21.
//

import SwiftUI

struct ContentView: View {
    let theme1: Array<String> = ["⚽️","🏀","🏈","⚾️","🥎","🎾","🏐","🏉","🥏","🎱","🏓"]
    let theme2: Array<String> = ["🚗","🚕","🚙","🚌","🚎","🏎️","🚓","🚑","🚒","🚐","🛻"]
    let theme3: Array<String> = ["🚡","🚠","🚟","🚃","🚋","🚞","🚝","🚄","🚅","🚈","🚂"]
    
    let cardCountTheme1 : Int = 4
    let cardCountTheme2 : Int = 5
    let cardCountTheme3 : Int = 6
    
    @State var cardCount: Int = 4
    
    @State var contentArray: Array<String> = ["⚽️","🏀","🏈","⚾️","🥎","🎾","🏐","🏉","🥏","🎱","🏓"]
    
//    var cardCount
    
    var body: some View {
        VStack{
            Label("Memorize!", systemImage: "").font(.largeTitle)
            ScrollView{
                cards
            }
            Spacer()
            themeChangeButtons
        }
        .padding()
    }
    
    var cards: some View{
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]){
            ForEach(0..<contentArray.count, id: \.self) { index in
                CardView(content:contentArray[index])
                    .aspectRatio(2/3, contentMode:.fit)
            }
        }
        .foregroundColor(.orange)
    }
    
    var themeChangeButtons: some View{
        HStack{
            themeChangeButton1
            Spacer()
            themeChangeButton2
            Spacer()
            themeChangeButton3
        }
    }
    
    func themeChangeButton(theme:Array<String>, symbol:String)->some View{
        Button(action: {
            contentArray = theme
            print(contentArray)
        }, label: {
            Image(systemName: symbol)
        })
    }
    
    var themeChangeButton1:some View{
        return themeChangeButton(theme: theme1,symbol: "soccerball")
    }
    
    var themeChangeButton2:some View{
        return themeChangeButton(theme: theme2,symbol: "car.fill")
    }
    
    var themeChangeButton3:some View{
        return themeChangeButton(theme: theme3,symbol: "train.side.rear.car")
    }
}

struct CardView: View{
    let content: String
    @State var isFaceUp = true
    
    var body: some View{
        ZStack{
            let base = RoundedRectangle(cornerRadius: 12)
            Group{
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0 : 1)
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}

#Preview {
    ContentView()
}
