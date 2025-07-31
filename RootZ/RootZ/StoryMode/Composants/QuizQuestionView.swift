//
//  QuizQuestionView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 28/07/2025.
//

import SwiftUI

struct QuizQuestionView: View {
    @Environment(QuizViewModel.self) private var viewModel
    @Environment(StoryModeViewModel.self) private var storyViewModel
    @Environment(QuestViewModel.self) private var questViewModel
    let culture: CulturesModel
    @Environment(\.dismiss) private var dismiss
    @Binding var showPopover : Bool
    
    var quest: Quest

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.redButton)
                        .font(.title)
                }
                .padding(.trailing, 25)
            }

            VStack {
                ProgressView(value: viewModel.progress)
                    .progressViewStyle(LinearProgressViewStyle(tint: Color(culture.accent2Color)))
                    .frame(height: 8)
                    .padding(.horizontal)
                    .cornerRadius(4)

                Text("\(Int(viewModel.progress * 100))%")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding(.top)
            
            VStack(spacing: 20) {
                Text(viewModel.currentQuestion.question)
                    .font(.custom("Baloo2", size: 24))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding()
                
                ForEach(0..<viewModel.currentQuestion.answers.count, id: \.self) { index in
                    Button(action: {
                        viewModel.selectAnswer(index: index)
                    }) {
                        Text(viewModel.currentQuestion.answers[index])
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(buttonColor(for: index))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .disabled(viewModel.selectedIndex != nil)
                }

                if viewModel.selectedIndex != nil {
                    MascottChatLeft(
                        mascott: viewModel.isAnswerCorrect == true ? "happy_lion": "sad_lion",
                        message: viewModel.isAnswerCorrect == true ? "Bonne réponse ! 🎉" : "Oups, tu fera mieux la prochaine fois !",
                        messageColor: culture.accentColor
                    )

                    Button(action: {
                        if viewModel.isLastQuestion {

                            viewModel.markAsFinished()

                        } else {
                            viewModel.next()
                        }
                    }) {
                        Text(viewModel.isLastQuestion ? "Terminer" : "Suivant")
                            .font(.custom("Quicksand", size: 24))
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color(culture.buttonColor))
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                    .padding(.top)
                }
            }
            .padding()

            Spacer()
        }
        .background(
            Color(culture.backgroundColor)
                .ignoresSafeArea()
        )
    }

    func buttonColor(for index: Int) -> Color {
        guard let selected = viewModel.selectedIndex else {
            return Color(culture.buttonColor)
        }

        if index == selected {
            return index == viewModel.currentQuestion.correctAnswerIndex ? .green : .red
        } else {
            return .gray
        }
    }
}

//
//#Preview {
//    let sampleQuestions = [
//        QuizQuestion(
//            question: "Quel est l'emblème protecteur ?",
//            answers: ["Khamsa", "Yaz", "Tambour", "Drapeau"],
//            correctAnswerIndex: 0
//        ),
//        QuizQuestion(
//            question: "Que représente la lettre Yaz ?",
//            answers: ["Force", "Liberté", "Terre", "Tradition"],
//            correctAnswerIndex: 1
//        )
//    ]
//    
//    QuizQuestionView(showPopover: .constant(true), culture: CultureData.defaultCulture, module: , quest: quests[0][0])
//        .environment(QuizViewModel(questions: sampleQuestions))
//        .environment(StoryModeViewModel(chapters: ChapterData.berbereChapters))
//        .environment(QuestViewModel(quests: quests, questOfMonthProgress: 12, berbereChapters: ChapterData.berbereChapters, module: .quiz))
//}





