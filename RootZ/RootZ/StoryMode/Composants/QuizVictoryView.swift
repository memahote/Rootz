//
//  QuizVictoryView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 28/07/2025.
//

import SwiftUI

struct QuizVictoryView: View {
    @Environment(QuizViewModel.self) private var viewModel
    @Environment(StoryModeViewModel.self) private var storyViewModel
    @Environment(QuestViewModel.self) private var questViewModel
    let culture: CulturesModel
    @Environment(\.dismiss) private var dismiss
    @Binding var showPopover: Bool
    
    @State private var showAnimation = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    showPopover = false
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.redButton)
                        .font(.title)
                }
                .padding(.trailing, 25)
            }
            
            Spacer()
            
            VStack(spacing: 30) {
                Image(culture.mascott)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                    .scaleEffect(showAnimation ? 1.1 : 0.9)
                
                Text("Bravo ! 🎉")
                    .font(.custom("Baloo2", size: 36))
                    .foregroundColor(Color(culture.accentColor))
                    .opacity(showAnimation ? 1.0 : 0.0)
                
                VStack(spacing: 15) {
                    Text("Tu as obtenu")
                        .font(.custom("Quicksand", size: 18))
                        .foregroundColor(.secondary)
                    
                    HStack {
                        Text("\(viewModel.score)")
                            .font(.custom("Baloo2", size: 48))
                            .foregroundColor(Color(culture.accentColor))
                            .bold()
                        
                        Text("/ \(viewModel.questions.count)")
                            .font(.custom("Baloo2", size: 24))
                            .foregroundColor(.secondary)
                    }
                    
                    ProgressView(value: Double(viewModel.score) / Double(viewModel.questions.count))
                        .progressViewStyle(LinearProgressViewStyle(tint: Color(culture.accent2Color)))
                        .frame(height: 8)
                        .frame(width: 200)
                        .cornerRadius(4)
                    
                    Text(viewModel.getScoreMessage())
                        .font(.custom("Quicksand", size: 16))
                        .foregroundColor(Color(culture.accentColor))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("+\(viewModel.score >= viewModel.questions.count/2 ? 10 : 20) XP")
                        .font(.custom("Quicksand", size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(culture.accentColor))
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(culture.accent2Color).opacity(0.2))
                        .stroke(Color(culture.accent2Color), lineWidth: 2)
                )
            }
            .scaleEffect(showAnimation ? 1.0 : 0.8)
            .opacity(showAnimation ? 1.0 : 0.0)
            
            Spacer()
            
            Button(action: {
                storyViewModel.unlockNextModule()
                questViewModel.updateQuestProgress(for: questViewModel.quests[0][0])
                showPopover = false
                dismiss()
            }) {
                Text("Continuer")
                    .font(.custom("Quicksand", size: 24))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(culture.buttonColor))
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding(.horizontal)
        }
        .background(
            Color(culture.backgroundColor)
                .ignoresSafeArea()
        )
        .onAppear {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.7)) {
                showAnimation = true
            }
        }
    }
    
    
}

#Preview {
    let sampleQuestions = [
        QuizQuestion(
            question: "Test question",
            answers: ["A", "B", "C", "D"],
            correctAnswerIndex: 0
        )
    ]
    
    QuizVictoryView(culture: CultureData.defaultCulture, showPopover: .constant(true))
        .environment(QuizViewModel(questions: sampleQuestions))
        .environment(StoryModeViewModel(chapters: ChapterData.berbereChapters))
        .environment(QuestViewModel(quests: quests, questOfMonthProgress: 12))
}
