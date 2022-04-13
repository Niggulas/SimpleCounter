//
//  ContentView.swift
//  SimpleCounter
//
//  Created by Nikolas Huber on 13.04.22.
//

import SwiftUI

struct ContentView: View {
    @State var counterLeft:Int = 0
    @State var counterRight:Int = 0
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    counterLeft += 1
                } label: {
                    Text(String(counterLeft))
                        .frame(minWidth: 15, idealWidth: .infinity, maxWidth: .infinity, minHeight: 15, idealHeight: .infinity, maxHeight: .infinity)
                        .font(.custom("big", size: 100))
                        .foregroundColor(Color.primary)
                }
                .background(Color.red)
                
                Button  {
                    counterRight += 1
                } label: {
                    Text(String(counterRight))
                        .frame(minWidth: 15, idealWidth: .infinity, maxWidth: .infinity, minHeight: 15, idealHeight: .infinity, maxHeight: .infinity)
                        .font(.custom("big", size: 100))
                        .foregroundColor(Color.primary)
                }
                .background(Color.green)
            }
            .ignoresSafeArea()
            
            Button {
                counterLeft = 0
                counterRight = 0
            } label: {
                Text("RESET")
                    .font(.custom("reset", size: 25))
                    .foregroundColor(Color.red)
                    .frame(minWidth: 12, idealWidth: .infinity, maxWidth: .infinity, minHeight: 20, idealHeight: 30, maxHeight: 30)
                    .background(Color(.systemGray6))
            }

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
