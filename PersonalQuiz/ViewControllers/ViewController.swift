//
//  ViewController.swift
//  PersonalQuiz
//
//  Created by user192060 on 5/28/21.
//

import UIKit

class ViewController: UIViewController {
    let question = [Question.getQuestion()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for question in question {
            print(question)
        }
    }


}

