//
//  ModuleView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 27/07/2025.
//

import SwiftUI

struct ModuleView: View {
    let module: Module
    let culture: CulturesModel
    @Binding var showModuleView : Bool
    @State private var currentIndex = 0
    
    var body: some View {
        let pages = module.modulesPages
        let currentPage = pages[currentIndex]
        let progress = Double(currentIndex + 1) / Double(pages.count)
        
        VStack(spacing: 20) {
            VStack {
                ProgressView(value: progress)
                    .progressViewStyle(LinearProgressViewStyle(tint: Color(culture.accent2Color)))
                    .frame(height: 8)
                    .padding(.horizontal)
                    .cornerRadius(4)
                
                Text("\(Int(progress * 100))%")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding(.top)
            
            ScrollView {
                
                VStack(spacing: 20) {
                    
                    Text(currentPage.title)
                        .font(.custom("Baloo2", size: 28))
                        .bold()
                    
                    if let image = currentPage.image {
                        Image(image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                    }
                    
                    Spacer()
                    
                    MascottChatLeft(mascott: currentPage.mascott, message: currentPage.content, messageColor: culture.accentColor)

                }
                .padding()
            }
            
            
            Button(action: {
                if currentIndex < pages.count - 1 {
                    currentIndex += 1
                } else {
                    showModuleView = false
                }
            }) {
                Text(currentIndex < pages.count - 1 ? "Suivant" : "Terminer")
                    .font(.custom("Quicksand", size: 24))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(module.color))
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
    ModuleView(
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
                ]
            ),
            culture:  CulturesModel(
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
            showModuleView: .constant(true)
        )
}
