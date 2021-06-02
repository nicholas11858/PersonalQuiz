//
//  AnswersViewController.swift
//  PersonalQuiz
//
//  Created by NIKOLAY OSIPOV on 31.05.2021.
//

import UIKit

class ResultViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var animalDefinition: UILabel!
    // MARK: - Public properties
    var answers: [Answer] = []
    // MARK: - Private properties
    private var countsOfAnimals: [AnimalType: Int] = [:]
    private var yourAnimal: AnimalType = .dog
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.setHidesBackButton(true, animated: false)
        
        identifyAnimal(answers: answers)
        
    }
    // MARK: - IB Actions
    @IBAction func tappedDoneBarButton(_ sender: UIBarButtonItem) {
        
    }
    // MARK: - Private Methods
    private func identifyAnimal(answers: [Answer]) {
        for item in answers {
            countsOfAnimals[item.type] = (countsOfAnimals[item.type] ?? 0) + 1
            print(countsOfAnimals)
        }
        if let (value, _) = countsOfAnimals.max(by: {$0.1 < $1.1}) {
            yourAnimal = value
            animalLabel.text = "Вы - \(yourAnimal.rawValue)"
            animalDefinition.text = yourAnimal.definition
            
        }
    }
}


