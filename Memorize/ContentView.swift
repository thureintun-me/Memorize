//
//  ContentView.swift
//  Memorize
//
//  Created by ThureinTun on 12/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    
   @State var isFaceUp : Bool = false
    var body: some View {
        
        ZStack {
            
            let base  = RoundedRectangle(cornerRadius: 12)
            
            if isFaceUp {
               base.fill(.white)
              base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            }else {
              base.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
