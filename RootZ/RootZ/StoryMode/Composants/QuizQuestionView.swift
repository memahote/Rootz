//
//  QuizQuestionView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 28/07/2025.
//

import SwiftUI

struct QuizQuestionView: View {
    @EnvironmentObject var viewModel: QuizViewModel
    let culture: CulturesModel
    @Environment(\.dismiss) private var dismiss

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

                if let selected = viewModel.selectedIndex {
                    MascottChatLeft(
                        mascott: culture.mascott,
                        message: viewModel.isAnswerCorrect == true ? "Bonne réponse ! 🎉" : "Oups, tu fera mieux la prochaine fois !",
                        messageColor: culture.accentColor
                    )

                    Button(action: {
                        if viewModel.isLastQuestion {
                            dismiss()
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




#Preview {
    let sampleQuestions = [
        QuizQuestion(
            question: "Quel est l’emblème protecteur ?",
            answers: ["Khamsa", "Yaz", "Tambour", "Drapeau"],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "Que représente la lettre Yaz ?",
            answers: ["Force", "Liberté", "Terre", "Tradition"],
            correctAnswerIndex: 1
        )
    ]

    let sampleCulture = CultureData.defaultCulture

    return QuizQuestionView(culture: sampleCulture)
        .environmentObject(QuizViewModel(questions: sampleQuestions))
}




