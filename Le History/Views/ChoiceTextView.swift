//
//  ChoiceTextView.swift
//  Le History
//
//  Created by Rhett Beardemphl :) on 11/16/23.
//

import SwiftUI

struct ChoiceTextView: View {
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    let choiceText: String
    
    var body : some View {
        Text(choiceText)
            .font(.title3)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 4)
    }
}
    

#Preview {
    ChoiceTextView(choiceText: "Choice Text!")
}
