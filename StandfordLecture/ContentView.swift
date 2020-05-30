//
//  ContentView.swift
//  StandfordLecture
//
//  Created by Atalay Aşa on 30.05.2020.
//  Copyright © 2020 Atalay Asa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: MemoryViewModel
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card)
            }
        }
        .padding()
        .aspectRatio(2/3, contentMode: .fit)
        .foregroundColor(Color.orange)
        .font(viewModel.cards.count != 10 ? .largeTitle : .title)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 5)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }.onTapGesture {
            print(self.card)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: MemoryViewModel())
    }
}
