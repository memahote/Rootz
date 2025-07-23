//
//  SummaryCard.swift
//  RootZ
//
//  Created by Mounir Emahoten on 21/07/2025.
//

import SwiftUI

struct SummaryCard: View {
    @Bindable var viewModel: AppViewModel
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .bottomTrailing) {
                Rectangle()
                    .foregroundStyle(Color(viewModel.selectedCulture.accentColor))
                    .frame(width: 350, height: 175)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 20,
                            bottomLeadingRadius: 0,
                            bottomTrailingRadius: 0,
                            topTrailingRadius: 20
                        )
                    )
               
                if viewModel.storyModeViewModel.currentChapterIndex % 2 == 0 {
                    MascottChatRight(
                        mascott: viewModel.selectedCulture.mascott, message: "Bienvenue dans le chapitre !",
                        messageColor: viewModel.selectedCulture.accent2Color
                    )
                } else {
                    MascottChatLeft(
                        mascott: viewModel.selectedCulture.mascott, message: "Bienvenue dans le chapitre !",
                        messageColor: viewModel.selectedCulture.accent2Color
                        )
                }
                
            }
            ZStack(alignment: .leading){
                Rectangle()
                    .foregroundStyle(Color(viewModel.selectedCulture.buttonColor))
                    .frame(width: 350, height: 75)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 0,
                            bottomLeadingRadius: 10,
                            bottomTrailingRadius: 10,
                            topTrailingRadius: 0
                        )
                    )
                
                VStack{
                    Text(viewModel.storyModeViewModel.currentChapter.title)
                        .foregroundStyle(.white)
                    
//                    ProgressView(value: viewM)
                    
                    //Foreach -> qui tourne sur tout les chapite et pour chaque chapitre donner la valeur a la progressbarView 
                }
                .padding()
                
            }
            
            
        }
        
    }
}

#Preview {
    SummaryCard(viewModel: AppViewModel())
}
