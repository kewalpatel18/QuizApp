//
//  ViewController.swift
//  QuizApp
//
//  Created by Kewal Patel on 10/27/21.
//

import UIKit

class ViewController: UIViewController {

    // Outlets -> Variables |// Action -> Function
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questions: UILabel!
    
//    //2D Array - Two Dimensional Array
//    var questionBank = [["5 + 4 = 10", "False"],
//                        ["3 + 5 = 7", "False"],
//                        ["10 + 2 = 12", "True"],
//                        ["1 - 1 = 1", "False"]]
//
    
   var quizbrain = QuizBrain()
    // Creating to object to integrate Model and View Controller
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI() //Calling a function
        
    }

   @objc func updateUI(){
       
       questions.text = quizbrain.getQuestion()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
       
       
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        //1. Check if the user input is actually the correct answer
        //2. Change the question Number
        
        //SENDER
    
        let userInput = sender.currentTitle!
        let checkAnswer = quizbrain.checkAnswer(userInput)
        
        
        if checkAnswer {
        
            sender.backgroundColor = UIColor.green
            
        }
        else {
            
            sender.backgroundColor = UIColor.red
            
        }
        
        quizbrain.nextQuestion()
        
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
}
}

