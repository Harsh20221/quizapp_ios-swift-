//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
  
    var correctanswer:Int=0;
   
    func clearbuttoncolor() { //? This clearbuttoncolor Will take care of clearing the button color after the given time
        let seconds = 0.7  ///?The Below code will change the opacity of the button back to original after 0.2 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            self.TrueButton.backgroundColor=UIColor.clear
            self.FalseButton.backgroundColor=UIColor.clear
        }
        
    }
    @IBOutlet var Progressbar: UIProgressView!
    let quest=[  Question(q: "A slug's blood is green.", a: "True"),
                 Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                 Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                 Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                 Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                 Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                 Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                 Question(q: "Google was originally called 'Backrub'.", a: "True"),
                 Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                 Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                 Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                 Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True") ]
    var currentquestion=0;
    @IBAction func Button(_ sender: UIButton) {
        let totalquestions=quest.count;
        currentquestion+=1;
        Progressbar.progress = Float(Float(currentquestion+1)/Float(totalquestions))
        
        Questiontextcontroller.text=quest[currentquestion].text; ///This will assign the QuestionController screen text equals to the Current question screen , Since we are updating current question as we are going through all the questions we are increasing current Question's Number
        if(sender.currentTitle==quest[currentquestion].answer){
            correctanswer+=1;
            sender.backgroundColor=UIColor.green ///?This is how you can set the whole ui color to a particular color when answer is  correct
            clearbuttoncolor()
            
            print(correctanswer)
        }
        else {sender.backgroundColor=UIColor.red;
            correctanswer+=0;
            clearbuttoncolor();
        } //!!!In swift do not forget to add {} even after else statement
        
        
        
    }
    @IBOutlet var TrueButton: UIButton!
    @IBOutlet var FalseButton: UIButton!
    @IBOutlet var Questiontextcontroller: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Questiontextcontroller.text=quest[currentquestion].text;
    }
}

