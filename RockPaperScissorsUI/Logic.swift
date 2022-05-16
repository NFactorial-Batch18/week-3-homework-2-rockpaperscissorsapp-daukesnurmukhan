//
//  Logic.swift
//  RockPaperScissorsUI
//
//  Created by Нұрмұхан Дәукес on 16.05.2022.
//

import Foundation
import SwiftUI

struct Logic: View {
    var body: some View {
        logical
    }
}

var logical: some View {
    imagess()
}

//["paper", "scissors", "rock"]

struct imagess: View {
    
    //@State private var isVariant1: Bool = false
    
    var body: some View {
        
        VStack {
        Text("не смог реализовать логику)")
            .foregroundColor(Color(red: 255/255, green: 204/255, blue: 0/255, opacity: 1))
            .font(.system(size: 25, weight: .semibold))
            .frame(width: 358, height: 62)
            
        
        Text("unable to implement logic)")
            .foregroundColor(Color(red: 181/255, green: 238/255, blue: 155/255, opacity: 1))
            .font(.system(size: 25, weight: .semibold))
            .frame(width: 358, height: 62)
        }
        
        
//        if progressElementImageUser[0] == progressElementImageMachine[0] {
//            Text("draw")
//        }
//        else if progressElementImageUser[0] == progressElementImageMachine[1] {
//            Text("lose")
//        } else if progressElementImageUser[0] == progressElementImageMachine[2] {
//            Text("wine")
//        }
//
//        else if progressElementImageUser[1] == progressElementImageMachine[0] {
//            Text("wine")
//        } else if progressElementImageUser[1] == progressElementImageMachine[1] {
//            Text("drawwww")
//        }else if progressElementImageUser[1] == progressElementImageMachine[2] {
//            Text("lose")
//        }
//
//        else if progressElementImageUser[2] == progressElementImageMachine[0] {
//            Text("lose")
//        } else if progressElementImageUser[2] == progressElementImageMachine[1] {
//            Text("wine")
//        } else if progressElementImageUser[2] == progressElementImageMachine[2] {
//            Text("draw")
//        }


    }
}


struct Logic_preview: PreviewProvider {
    static var previews: some View {
        Logic()
    }
}
