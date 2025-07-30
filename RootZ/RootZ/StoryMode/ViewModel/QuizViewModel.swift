//
//  QuizViewModel.swift
//  RootZ
//
//  Created by Mounir Emahoten on 28/07/2025.
//

import Foundation

@Observable
class QuizViewModel {
    var questions: [QuizQuestion]
    var currentIndex = 0
    var selectedIndex: Int? = nil
    var isAnswerCorrect: Bool? = nil
    var score = 0
    var isFinished = false

    init(questions: [QuizQuestion]) {
        self.questions = questions
    }

    var currentQuestion: QuizQuestion {
        questions[currentIndex]
    }

    var progress: Double {
        Double(currentIndex + (selectedIndex != nil ? 1 : 0)) / Double(questions.count)
    }

    var isLastQuestion: Bool {
        currentIndex == questions.count - 1
    }

    func selectAnswer(index: Int) {
        guard selectedIndex == nil else { return }
        selectedIndex = index
        isAnswerCorrect = (index == currentQuestion.correctAnswerIndex)
        if isAnswerCorrect == true {
            score += 1
        }
    }

    func next() {
        guard currentIndex + 1 < questions.count else {
            isFinished = true
            return
        }

        currentIndex += 1
        selectedIndex = nil
        isAnswerCorrect = nil
    }
}

