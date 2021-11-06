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
    
    //2D Array - Two Dimensional Array
    var questionBank = [["5 + 4 = 10", "False"],
                        ["3 + 5 = 7", "False"],
                        ["10 + 2 = 12", "True"],
                        ["1 - 1 = 1", "False"]]
    
    
  

    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI() //Calling a function
        
    }

   @objc func updateUI(){
       
       questions.text = questionBank[questionNumber][0]
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
       
       
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        let userInput = sender.currentTitle!
        
        //False
        
        if userInput == questionBank[questionNumber][1] {
        
            sender.backgroundColor = UIColor.green
            
        }
        else {
            
            sender.backgroundColor = UIColor.red
            
        }
        
        if questionNumber + 1 < questionBank.count {
        
        questionNumber += 1
        
}
        else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
}
}

