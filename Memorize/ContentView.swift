//
//  ContentView.swift
//  Memorize
//
//  Created by Joel de Almeida Souza on 02/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 10, content: {
            ForEach(0..<4) {  index in
                
                CardView(isFaceUp: true)
            }
        }).padding().foregroundColor(.orange)
        
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill().foregroundColor(.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill().foregroundColor(.orange)
            }
            
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
