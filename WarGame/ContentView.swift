//
//  ContentView.swift
//  WarGame
//
//  Created by Joshua Hobson on 5/29/23.
//

import SwiftUI


struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
    
        ZStack{

            Image("background-plain")
                .resizable()
                .ignoresSafeArea()

            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
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
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom,10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()


                }.foregroundColor(.white)
                Spacer()

            }
            
        }
        
    }
    
    func deal(){
       // Randomize the player cards
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        
        // Randomize the cpu cards
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the scores
        
        if playerCardValue > cpuCardValue {
            //Add 1 to player score
            playerScore += 1
            print("Added 1 to the player's score.")
            
        } else if cpuCardValue > playerCardValue {
            // Add 1 to cpu score
            cpuScore += 1
            print("Added 1 to the CPUS's score.")

        } else if playerCardValue == cpuCardValue {
            print("It's a tie, no score")

        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
