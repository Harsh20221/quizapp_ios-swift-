//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let quest=["Four+Two Is Equal to Six ",
    " Five-3 is equal to 2 ",
   "Three + 8 < 10"]
    var currentquestion=0;


    @IBAction func Button(_ sender: UIButton) {
        currentquestion+=1;
        Questiontextcontroller.text=quest[currentquestion];
    }
   
   
    @IBOutlet var TrueButton: UIButton!
    @IBOutlet var FalseButton: UIButton!
    @IBOutlet var Questiontextcontroller: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Questiontextcontroller.text=quest[currentquestion];
        
        
        
        
        
        
    }

    

    

}

