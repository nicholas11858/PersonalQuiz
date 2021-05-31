//
//  Question.swift
//  PersonalQuiz
//
//  Created by user192060 on 5/28/21.
//

// There isn't import of UIKit.

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
   static func getQuestion() -> [Question] {
    [
        Question(
        title: "Who are you?",
        type: .single,
        answers: [Answer(title: "", type: .cat)])
    ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabit = "🐰"
    case tartile = "🐢"
}

struct Answer {
    let title: String
    let type: AnimalType
}


