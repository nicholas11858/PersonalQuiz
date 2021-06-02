//
//  HomeViewController.swift
//  PersonalQuiz
//
//  Created by user192060 on 6/1/21.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: - Public Propertirs
    let questions = Question.getQuestions()
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController
        else { return }
        guard let vc = navigationVC.topViewController as? QuestionsViewController
        else { return }
        
        vc.questions = questions
    }
    // MARK: - IB Actions
    @IBAction func unwindSegie(segue: UIStoryboardSegue) {
        
    }
}
