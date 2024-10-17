//
//  ContentView.swift
//  MathGame
//
//  Created by Haidarov N on 21/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var correctAnswer = 0
    @State private var choiseArray : [Int] = [0, 1, 2, 3]
    @State private var firtstNumber = 0
    @State private var secondNumber = 0
    @State private var difficulity = 100
    @State private var score = 0
    
    var body: some View {
        VStack {
            Text("\(firtstNumber) + \(secondNumber)")
                .font(.largeTitle)
                .bold()
            
            HStack{
                ForEach(0..<2){ index in
                    Button{
                        answerIsCorrect(answer: choiseArray[index])
                        generateAnswers()
                    } label: {
                        AnswerNumber(number: choiseArray[index])
                    }
                }
            }
            
            HStack{
                ForEach(2..<4){ index in
                    Button{
                        answerIsCorrect(answer: choiseArray[index])
                        generateAnswers()
                    } label: {
                        AnswerNumber(number: choiseArray[index])
                    }
                }
            }
            
      

            
            Text("Score : \(score)")
                .font(.headline)
                .bold()
            
        }.onAppear(perform: generateAnswers)
    }
    
    func answerIsCorrect(answer: Int){
        let isCorrect = answer == correctAnswer ? true : false
        
        if isCorrect {
            self.score += 1
        } else{
            self.score -= 1
        }
        
    }
    
    func generateAnswers (){
        firtstNumber = Int.random(in: 0...(difficulity/2))
        secondNumber = Int.random(in: 0...(difficulity/2))
        
        var answerList = [Int]()
        
        correctAnswer = firtstNumber + secondNumber
        for _ in 0...2{
            answerList.append(Int.random(in: 0...difficulity))
        }
        
        answerList.append(correctAnswer)
        choiseArray = answerList.shuffled()
        
    }
}

#Preview {
    ContentView()
}
