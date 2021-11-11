//
//  QuizBrain.swift
//  QuizApp
//
//  Created by Kewal Patel on 11/10/21.
//

import Foundation


struct QuizBrain {
    
    
    var questionBank = [
    
    Questions(text: "5 + 4 = 10", answer: "False"),
    Questions(text: "3 + 5 = 7", answer: "False"),
    Questions(text: "10 + 2 = 12", answer: "True"),
    Questions(text: "1 - 1 = 1", answer: "False")



]


    var questionNumber = 0
    // Create a function for displaying question text
    
    func getQuestion() -> String {
        
        return questionBank[questionNumber].text
        
        
        
        
    }
    
    func checkAnswer(_userInput : String) -> Bool{
        
        if _userInput == questionBank[questionNumber].answer{
        
        return true
        
        
    }
        else {
        
        return false
            
        }
        
    }
    
    mutating func nextQuestion() {
            
            if questionNumber + 1 < questionBank.count {
            
            questionNumber += 1
            
    }
            else {
                questionNumber = 0
            }
        
    
}
}

