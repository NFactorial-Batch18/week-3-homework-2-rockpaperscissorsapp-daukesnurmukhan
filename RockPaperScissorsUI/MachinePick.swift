//
//  MachinePick.swift
//  RockPaperScissorsUI
//
//  Created by Нұрмұхан Дәукес on 16.05.2022.
//

import Foundation
import SwiftUI

var progressElementImageMachine = ["paper", "scissors", "rock"]

struct MachinePick: View {
    var body: some View {
        Showcase2
    }
    
    
    @State var ShowSecond = false
    
    var Showcase2: some View {
        //    NavigationView {
        VStack {
            
            Text("Your opponent is thinking")
                .foregroundColor(.black)
                .frame(width: 358, height: 186)
                .font(.system(size: 54, weight: .semibold))
                .multilineTextAlignment(.center)
                .lineLimit(3)
            
            Spacer()
            
            NavigationLink(isActive: $ShowSecond) {
                SecondViewww()
            } label: {
                EmptyView()
            }
            
            Button {
                ShowSecond = true
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 48)
                        .fill(Color(red: 243/255, green: 242/255, blue: 248/255, opacity: 1))
                        .frame(width: 342, height: 128)
                    
                    Image("loading")
                }
                .padding()
            }
            Spacer()
        }
        
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                ShowSecond = true
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Round #1")
        
        
        //}
        
    }
    
}



struct SecondViewww: View {
    @State var ShowSecondLogic1 = false
    var body: some View {
        let Random = Int.random(in: 1...3)
        
        if Random == 1 {
            NavigationLink(isActive: $ShowSecondLogic1) {
                Logic()
            } label: {
                EmptyView()
            }
            
            Button {
                ShowSecondLogic1 = true
            } label: {
                VStack {
                    Text("Your opponent’s pick")
                        .foregroundColor(.black)
                        .frame(width: 358, height: 186)
                        .font(.system(size: 54, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                    Spacer()
                    RoundedArraysImageButtonMachine(array: 0)
                    //RoundedEmojiButtonn(emoji: "🧻")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("Round #1")
                    Spacer()
                }
                .padding()
            }
            Spacer()
            
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        ShowSecondLogic1 = true
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("Round #1")
        }
        
        
        
        
        if Random == 2 {
            NavigationLink(isActive: $ShowSecondLogic1) {
                Logic()
            } label: {
                EmptyView()
            }
            
            Button {
                ShowSecondLogic1 = true
            } label: {
                VStack {
                    Text("Your opponent’s pick")
                        .foregroundColor(.black)
                        .frame(width: 358, height: 186)
                        .font(.system(size: 54, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                    Spacer()
                    RoundedArraysImageButtonMachine(array: 1)
                    //RoundedEmojiButtonn(emoji: "🧻")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("Round #1")
                    Spacer()
                }
                .padding()
            }
            Spacer()
            
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        ShowSecondLogic1 = true
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("Round #1")
        }
        
        if Random == 3 {
            NavigationLink(isActive: $ShowSecondLogic1) {
                Logic()
            } label: {
                EmptyView()
            }
            
            Button {
                ShowSecondLogic1 = true
            } label: {
                VStack {
                    Text("Your opponent’s pick")
                        .foregroundColor(.black)
                        .frame(width: 358, height: 186)
                        .font(.system(size: 54, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                    Spacer()
                    RoundedArraysImageButtonMachine(array: 2)
                    //RoundedEmojiButtonn(emoji: "🧻")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("Round #1")
                    Spacer()
                }
                .padding()
            }
            Spacer()
            
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        ShowSecondLogic1 = true
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("Round #1")
        }
    }
}

struct RoundedArraysImageButtonMachine: View {
    let array: Int
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 48)
                .fill(Color(red: 243/255, green: 242/255, blue: 248/255, opacity: 1))
                .frame(width: 342, height: 128)
            Image(progressElementImageMachine[array])
        }
    }
}

struct SettingsListLogic: View {
    @State private var ShowSeconds2 = false
    var body: some View {
        NavigationLink(isActive: $ShowSeconds2) {
            Logic()
        } label: {
            EmptyView()
        }
        
        Button {
            ShowSeconds2 = true
        } label: {
            imagess()
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                ShowSeconds2 = true
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Round #1")
        
    }
}


struct resh: View {
    var body: some View {
        Result1()
    }
}

struct MachinePick_Previews: PreviewProvider {
    static var previews: some View {
        MachinePick()
    }
}
