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
                VStack {
                    Button {
                        counterLeft += 1
                    } label: {
                        Text(String(counterLeft))
                            .frame(minWidth: 15, idealWidth: .infinity, maxWidth: .infinity, minHeight: 15, idealHeight: .infinity, maxHeight: .infinity)
                            .font(.custom("big", size: 150))
                            .foregroundColor(Color.primary)
                    }
                    .background(Color.red)
                    
                    Divider()
                    
                    Button {
                        if counterLeft > 0 {
                            counterLeft -= 1
                        }
                    } label: {
                        Text("-1")
                            .frame(minWidth: 15, idealWidth: .infinity, maxWidth: .infinity, minHeight: 15, idealHeight: 60, maxHeight: 60)
                            .font(.custom("negative", size: 50))
                            .background(Color.red)
                            .foregroundColor(Color.primary)
                    }

                }
                .background(Color.red)
                
                VStack {
                    Button  {
                        counterRight += 1
                    } label: {
                        Text(String(counterRight))
                            .frame(minWidth: 15, idealWidth: .infinity, maxWidth: .infinity, minHeight: 15, idealHeight: .infinity, maxHeight: .infinity)
                            .font(.custom("big", size: 150))
                            .foregroundColor(Color.primary)
                    }
                    .background(Color.green)
                    
                    Divider()
                    
                    Button {
                        if counterRight > 0 {
                            counterRight -= 1
                        }
                    } label: {
                        Text("-1")
                            .frame(minWidth: 15, idealWidth: .infinity, maxWidth: .infinity, minHeight: 15, idealHeight: 60, maxHeight: 60)
                            .font(.custom("negative", size: 50))
                            .background(Color.green)
                            .foregroundColor(Color.primary)
                    }

                }
                .background(Color.green)
                
            }
            .background(Color.red)
            .ignoresSafeArea()
            
            Button {
                counterLeft = 0
                counterRight = 0
            } label: {
                Text("RESET")
                    .font(.custom("reset", size: 25))
                    .foregroundColor(Color.red)
                    .frame(minWidth: 12, idealWidth: .infinity, maxWidth: .infinity, minHeight: 20, idealHeight: 60, maxHeight: 60)
                    .background(Color(.systemGray6))
            }

            
        }
        .ignoresSafeArea()
        .background(Color(.systemGray6))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
