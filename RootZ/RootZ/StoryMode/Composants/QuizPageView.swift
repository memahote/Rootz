//
//  QuizPageView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 28/07/2025.
//

import SwiftUI

struct QuizPageView: View {
    @Environment(QuizViewModel.self) private var viewModel
    @Environment(StoryModeViewModel.self) private var storyViewModel
    @Environment(QuestViewModel.self) private var questViewModel
    let culture: CulturesModel
    @Environment(\.dismiss) private var dismiss
    @Binding var showPopover: Bool
    let type : ModuleType
    
    var body: some View {
        ZStack {
            Color(culture.backgroundColor)
                .ignoresSafeArea()
            
            if viewModel.isFinished {
                QuizVictoryView(culture: culture, showPopover: $showPopover, type: type)
            } else {
                QuizQuestionView(culture: culture, showPopover: $showPopover, quest: questViewModel.quests[1][2])
            }
        }
    }
}

#Preview {
    let sampleQuestions = [
        QuizQuestion(
            question: "Quel est l'emblème protecteur ?",
            answers: ["Khamsa", "Yaz", "Tambour", "Drapeau"],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "Que représente la lettre Yaz ?",
            answers: ["Force", "Liberté", "Terre", "Tradition"],
            correctAnswerIndex: 1
        )
    ]
    
    QuizPageView(culture: CultureData.defaultCulture, showPopover: .constant(true), type: .quiz)
        .environment(QuizViewModel(questions: sampleQuestions))
        .environment(StoryModeViewModel(chapters: ChapterData.berbereChapters))
        .environment(QuestViewModel(quests: quests, questOfMonthProgress: 12, berbereChapters: ChapterData.berbereChapters))
}
