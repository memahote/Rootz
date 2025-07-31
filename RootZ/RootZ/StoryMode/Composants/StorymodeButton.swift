//
//  StorymodeButton.swift
//  RootZ
//
//  Created by Mounir Emahoten on 25/07/2025.
//

import SwiftUI

struct StorymodeButton: View {
    @Environment(StoryModeViewModel.self) private var storyViewModel
    @State var showPopover: Bool = false
    @State var showModuleView: Bool = false
    let module: Module
    let culture: CulturesModel
    let index: Int
    
    //    @Environment(AppViewModel.self) var appViewModel
    
    var body: some View {
        Button(action: {
            showPopover.toggle()
        }) {
            ZStack {
                Circle()
                    .fill(Color(module.color))
                    .frame(width: 60, height: 60)
                    .shadow(color: Color.black.opacity(0.2), radius: 8, x: 4, y: 4)
                    .scaleEffect(1.1)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 2)
                    )
                
                Image(systemName: module.type == .quiz ? "questionmark.circle.fill" : module.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
            }
        }
        .popover(isPresented: $showPopover) {
            VStack(spacing: 16) {
                Text(module.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Text("+20 XP")
                    .font(.headline)
                    .foregroundColor(.green)
                
                Button(action: {
                    storyViewModel.selectModule(at: index)
                    showModuleView = true
                }) {
                    Text("Commencer")
                        .fontWeight(.semibold)
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .background(Color(module.color))
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .fullScreenCover(isPresented: $showModuleView) {
                    
                    if module.type == .quiz {

                        QuizPageView(culture: culture, showPopover: $showPopover, type: module.type)
                            .environment(QuizViewModel(questions: module.quiz ?? []))
                            .environment(storyViewModel)
                            .environment(QuestViewModel(quests: quests, questOfMonthProgress: 12, berbereChapters: ChapterData.berbereChapters))

                    } else {
                        ModuleView(culture: culture, showPopover: $showPopover)
                            .environment(ModuleViewModel(module: module))
                            .environment(storyViewModel)
                    }
                }
            }
            .presentationCompactAdaptation(.popover)
            .padding()
        }
    }
}

#Preview {
    StorymodeButton(
        module: Module(
            title: "Le Drapeau",
            icon: "flag.fill",
            isUnlocked: true,
            color: "ButtonAfrique",
            modulesPages: [
                ModulePage(
                    title: "Introduction",
                    content: "Le drapeau est un symbole fort de l'identité culturelle.",
                    mascott: "Lion1",
                    image: "drapeau_intro"
                )
            ],
            type: .content,
            quiz: nil,
            isFinish: false
        ),
        culture: CulturesModel(
            name: "Berbère",
            flag: "Berber_flag",
            mascott: "Lion1",
            chapters: ChapterData.berbereChapters,
            backgroundColor: "FondAfrique",
            buttonColor: "ButtonAfrique",
            accentColor: "CouleurAccent",
            accent2Color: "CouleurAccent2",
            isUnlock: true,
            progressbar: 0.6,
            associatedCountries: ["maroc", "algérie", "tunisie"],
            associatedRegions: ["afrique"],
            keywords: ["berbere", "tamazight","arabe","marocain","algérien"]
        ),
        index: 0
    )
    .environment(StoryModeViewModel(chapters: ChapterData.berbereChapters))
}
