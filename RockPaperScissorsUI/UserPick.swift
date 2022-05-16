//
//  UserPick.swift
//  RockPaperScissorsUI
//
//  Created by Нұрмұхан Дәукес on 16.05.2022.
//

import Foundation
import SwiftUI

var progressElementImageUser = ["paper", "scissors", "rock"]

struct UserPick: View {
    var body: some View {
        
        Showcase
    }
}

var Showcase: some View {
    
    //@State var Emogi1 = false
    
    //NavigationView {
        VStack(spacing: 48) {
            
            Text("Take your pick")
                            .frame(width: 358, height: 62)
                            .font(.system(size: 54, weight: .bold))
                            .padding(.top, 42)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationTitle("Round #1")
            
            
            NavigationLink(destination: SettingsList1()){
                RoundedArraysImageButtonUser(array: 0)
                //RoundedEmojiButtonn(emoji: "🧻")
            }
            
            NavigationLink(destination: SettingsList2()){
                RoundedArraysImageButtonUser(array: 1)
                //RoundedEmojiButtonn(emoji: "✂️")
            }
            
            NavigationLink(destination: SettingsList3()){
                RoundedArraysImageButtonUser(array: 2)
                //RoundedEmojiButtonn(emoji: "🗿")
            }
            Spacer()
        }
    
   
   
        //.navigationBarTitleDisplayMode(.inline)
        //.navigationTitle("Round #1")
        
    //}
}

struct Result1: View {
    
    var body: some View {
        VStack {
            text()
            Spacer()
            RoundedArraysImageButtonUser(array: 0)
        //RoundedEmojiButtonn(emoji: "🧻")
            Spacer()
        }
    }
    
}

struct Result2: View {
    var body: some View {
        VStack {
            text()
            Spacer()
            RoundedArraysImageButtonUser(array: 1)
        //RoundedEmojiButtonn(emoji: "✂️")
            Spacer()
        }
    }
}

struct Result3: View {
    var body: some View {
        VStack {
            text()
            Spacer()
            RoundedArraysImageButtonUser(array: 2)
        //RoundedEmojiButtonn(emoji: "🗿")
            Spacer()
        }
    }
}

struct RoundedEmojiButtonn: View {
    let emoji: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 48)
                .fill(Color(red: 243/255, green: 242/255, blue: 248/255, opacity: 1))
                .frame(width: 342, height: 128)
            Text(emoji)
        }
    }
}

struct RoundedArraysImageButtonUser: View {
    let array: Int
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 48)
                .fill(Color(red: 243/255, green: 242/255, blue: 248/255, opacity: 1))
                .frame(width: 342, height: 128)
            Image(progressElementImageUser[array])
        }
    }
}


struct text: View {
    var body: some View {
        Text("Your pick")
                        .frame(width: 358, height: 62)
                        .font(.system(size: 54, weight: .bold))
                        .padding(.top, 42)
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("Round #1")
    }
}

struct SettingsList1: View {
    @State private var ShowSeconds2 = false
    var body: some View {
        NavigationLink(isActive: $ShowSeconds2) {
            MachinePick()
        } label: {
            EmptyView()
        }

        Button {
            ShowSeconds2 = true
        } label: {
            Result1()
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

struct SettingsList2: View {
    @State private var ShowSeconds2 = false
    var body: some View {
        NavigationLink(isActive: $ShowSeconds2) {
            MachinePick()
        } label: {
            EmptyView()
        }

        Button {
            ShowSeconds2 = true
        } label: {
            Result2()
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

struct SettingsList3: View {
    @State private var ShowSeconds2 = false
    var body: some View {
        NavigationLink(isActive: $ShowSeconds2) {
            MachinePick()
        } label: {
            EmptyView()
        }

        Button {
            ShowSeconds2 = true
        } label: {
            Result3()
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


struct SecondVi: View {
    var body: some View {
        MachinePick()
    }
}

struct UserPick_Previews: PreviewProvider {
    static var previews: some View {
        UserPick()
    }
}
