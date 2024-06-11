//
//  ContentView.swift
//  EmojiLover
//
//  Created by alan hu on 2024-06-11.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😡, 🤓, 👅, 😩
}

struct ContentView: View {
    @State var selection: Emoji = .👅
    
    var body: some View {
        VStack {
            Text("Emoji Lover")
                .font(.system(size: 30))
            Text(selection.rawValue)
                .font(.system(size: 150))
            Picker("Pick your Emoji", selection: $selection){
                ForEach(Emoji.allCases, id: \.self) {
                    emoji in Text(emoji.rawValue)
                }
            }
            .pickerStyle(.segmented)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
