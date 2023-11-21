//
//  ContentView.swift
//  Le History
//
//  Created by Rhett Beardemphl :) on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
    
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor2 = Color(red: 236/255, green: 200/255, blue: 54/255)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack{
                Text("1 / 10")
                    .font(.callout)
                    .padding()
                    .bold()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                Spacer()
                HStack {
                    ForEach(0..<question.possibleAnswers.count) {index in
                        Button(action: {
                            print("User tapped: \(question.possibleAnswers[index])")
                            mainColor = index == question.correctAnswerIndex ? .green : .red
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[index])
                        })
                    }
                }
                .padding()
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    ContentView()
}
