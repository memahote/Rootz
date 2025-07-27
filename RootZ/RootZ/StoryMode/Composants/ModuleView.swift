//
//  ModuleView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 27/07/2025.
//

import SwiftUI

struct ModuleView: View {
    let module: Module
    @Binding var showModuleView : Bool
    
    @State private var currentIndex = 0
    
    var body: some View {
        let pages = module.modulesPages
        let currentPage = pages[currentIndex]
        
        VStack(spacing: 20) {
            ScrollView {
                VStack(spacing: 20) {
                    if let image = currentPage.image {
                        Image(image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                    }
                    
                    Text(currentPage.title)
                        .font(.title2)
                        .bold()
                    
                    Text(currentPage.content)
                        .padding()
                }
                .padding()
            }
            
            Spacer()
            
            Button(action: {
                if currentIndex < pages.count - 1 {
                    currentIndex += 1
                } else {
                    showModuleView = false
                }
            }) {
                Text(currentIndex < pages.count - 1 ? "Suivant" : "Terminer")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(module.color))
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding()
        }
        .padding()
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
            showModuleView: .constant(true)
        )
}
