//
//  Questions.swift
//  quizapp
//
//  Created by Harsh Kumar on 20/07/24.
//

import Foundation

struct Question {
    
    let text : String
    let answer : String     
    
    init(q: String,a:String){  ///!!! Make sure to declare initialisers inside the Struct itself 
        text=q
        answer=a
    }
    
}


