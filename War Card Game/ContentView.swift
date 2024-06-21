//
//  ContentView.swift
//  War Card Game
//
//  Created by Lesley Lopez on 5/22/24.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
   @State var playerScore = 0
   @State var cpuScore = 0
    
    var body: some View {
        
        
        ZStack(){
            Color(.green)
                .ignoresSafeArea()
            VStack(){
                Spacer()
                Image("logo")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                
                Button {
                    deal()
                } label: {
                    Image(.button)
                }

                

                
                HStack(){
                    Spacer()
                    VStack {
                        Text("Player").padding()
                        Text(String(playerScore)).font(.title)
                            
                    }
                   Spacer()
                    VStack {
                        Text("CPU").padding()
                        Text(String(cpuScore)).font(.title)
                    }
                    Spacer()
                }.foregroundColor(Color.white).fontWeight(.bold)
                    .padding()
                
            }
        }
    }
    
    func deal() {
        // Randomize players cards
        let playerCardValue = Int.random(in:2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize CPU
        let cpuCardValue = Int.random(in:2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // update score
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if playerCardValue < cpuCardValue {
            cpuScore += 1
        }
        
        }
        
    }


#Preview {
    ContentView()
}
