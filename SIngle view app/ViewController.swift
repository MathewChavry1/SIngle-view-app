//
//  ViewController.swift
//  SIngle view app
//
//  Created by 8h on 12/1/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var finalfinal: UILabel!
    @IBOutlet weak var Finalscore: UIButton!
    @IBOutlet weak var sc: UILabel!
    
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var answerTextField: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    
    @IBOutlet weak var replay: UIButton!
  
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var check: UIButton!
    var index = 0
    var score = 0
    
    var quiz:[Quiz] = [Quiz(question: "Whos the fast man alive?", answer: "Flash"),Quiz(question: "Whos the flash's  side kick?", answer: "Kid Flash"),Quiz(question: "What is the name of Batman's butler?", answer: " Alfred Pennyworth"),Quiz(question: "What is the name of Superman's dog?", answer: "Krypto"),Quiz(question: "What Teen Titan has a demon father?", answer: "Raven")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        Finalscore.isHidden = true

        question.text = quiz[index].question
    }
    
    

    @IBAction func replay(_ sender: UIButton) {
        
    index = 0
        question.text = quiz[index].question
        nextButton.isHidden = false
    
        
        
    }

    @IBAction func play(_ sender: UIButton) {
        
        answerTextField.text = ""
        answer.text  = " "
        index += 1
        if index < quiz.count{
            question.text =  quiz[index].question
        }
        
        if index == quiz.count
        {
            nextButton.isHidden = true
        }
        if index == quiz.count {
            Finalscore.isHidden = false
        }
    }
  
    @IBAction func checkAnswer(_ sender: UIButton) {
        if answerTextField.text?.lowercased() == quiz[index].answer
        {
            answer.text = "Correct!"
            score += 1
            sc.text = String(score)
        }
        
        else{
            
            answer.text = "Incorrect"

        }
       
        
    }
    
}

