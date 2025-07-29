//
//  ModuleView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 27/07/2025.
//

import SwiftUI

struct ModuleView: View {
    @Environment(StoryModeViewModel.self) private var storyViewModel
    @Environment(ModuleViewModel.self) private var viewModel
    let culture: CulturesModel
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack() {
            HStack{
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

            ScrollView {
                VStack(spacing: 20) {
                    Text(viewModel.currentPage.title)
                        .font(.custom("Baloo2", size: 28))
                        .bold()

                    if let image = viewModel.currentPage.image {
                        Image(image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                    }

                    Spacer()
                        .padding(.top)

                    MascottChatLeft(
                        mascott: viewModel.currentPage.mascott,
                        message: viewModel.currentPage.content,
                        messageColor: culture.accentColor
                    )
                }
                .padding()
            }
            .scrollIndicators(.hidden)

            Button(action: {
                if viewModel.isLastPage {
                    // Marquer le module comme terminé
                    viewModel.markAsFinished()
                    
                    // Mettre à jour dans le StoryModeViewModel
                    storyViewModel.updateCurrentModule(viewModel.module)
                    
                    // Débloquer le module suivant
                    storyViewModel.unlockNextModule()
                    
                    // Fermer la vue
                    dismiss()
                } else {
                    viewModel.nextPage()
                }
            }) {
                Text(viewModel.isLastPage ? "Terminer" : "Suivant")
                    .font(.custom("Quicksand", size: 24))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(viewModel.module.color))
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding()
        }
        .background(
            Color(culture.backgroundColor)
                .ignoresSafeArea()
        )
    }
}

#Preview {
    let mockStoryVM = StoryModeViewModel(chapters: ChapterData.berbereChapters)
    let mockModuleVM = ModuleViewModel(
        module: Module(
            title: "Le Drapeau",
            icon: "flag.fill",
            isUnlocked: true,
            color: "ButtonAfrique",
            modulesPages: [
                ModulePage(
                    title: "Intro",
                    content: "Bienvenue dans le module",
                    mascott: "Lion1",
                    image: "Berber_flag"
                )
            ], type: .content, quiz: nil, isFinish: false
        )
    )
    
    return ModuleView(
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
            keywords: ["berbere", "tamazight", "arabe", "marocain", "algérien"]
        )
    )
    .environment(mockModuleVM)
    .environment(mockStoryVM)
}

