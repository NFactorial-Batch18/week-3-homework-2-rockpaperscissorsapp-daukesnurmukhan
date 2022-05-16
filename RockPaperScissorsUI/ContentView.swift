//
//  ContentView.swift
//  RockPaperScissorsUI
//
//  Created by Нұрмұхан Дәукес on 16.05.2022.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        ButtonRectangle
    }
}


var ButtonRectangle: some View {
    NavigationView {
        VStack(spacing: 30) {
            
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [.white, .red, .purple, .blue, .white, .white]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Text("Welcome to the game!")
                        .foregroundColor(.white)
                        .font(.system(size: 54, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                        .padding(.top, 92)
                    
                    Spacer()
                }
                
                
                VStack() {
                Spacer()
                NavigationLink(destination: UserPick()) {
                    ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 358, height: 50)
                        .foregroundColor(Color(red: 103/255, green: 80/255, blue: 164/255, opacity: 1))
                    Text("Single player")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .medium))
                }
            }
        

                NavigationLink(destination: UserPick()) {
                    ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 358, height: 50)
                        .foregroundColor(Color(red: 103/255, green: 80/255, blue: 164/255, opacity: 1))
                    Text("Multi player")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .medium))
                   }
                 }
                    
              }
           }
        }
    }
}

struct Result: View {
    var selection: String

    var body: some View {
        Text("You selection \(selection)")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
