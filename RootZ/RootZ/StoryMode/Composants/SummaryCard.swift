//
//  SummaryCard.swift
//  RootZ
//
//  Created by Mounir Emahoten on 21/07/2025.
//

import SwiftUI

struct SummaryCard: View {
    @Bindable var viewModel: AppViewModel
    @Environment(\.dismiss) private var dismiss
    var chapter : Chapters
    var index : Int
    var isCollapsed : Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .bottomTrailing) {
                Rectangle()
                    .foregroundStyle(Color(viewModel.selectedCulture.accentColor))
                    .frame(width: 350, height: isCollapsed ? 0 : 175)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 20,
                            bottomLeadingRadius: 0,
                            bottomTrailingRadius: 0,
                            topTrailingRadius: 20
                        )
                    )
                
                if !isCollapsed {
                    if index % 2 != 0 {
                        MascottChatRight(
                            mascott: viewModel.selectedCulture.mascott, message: chapter.title,
                            messageColor: viewModel.selectedCulture.accent2Color
                        )
                    } else {
                        MascottChatLeft(
                            mascott: viewModel.selectedCulture.mascott, message: chapter.title,
                            messageColor: viewModel.selectedCulture.accent2Color
                        )
                    }
                }
                
            }
            
            //Transformer ca en bouton qui change le currentchapter et update le storymode
            //quand progress == 1 la partie du haut se raccourci
            Button {
                viewModel.storyModeViewModel.currentChapterIndex = index - 1
                dismiss()
            } label: {
                VStack(alignment: .leading){
                    Text("Chapitre \(index)")
                        .foregroundStyle(.white)
                    if chapter.isUnlocked {
                        ProgressView(value: chapter.progression)
                            .tint(Color(viewModel.selectedCulture.accent2Color))
                    } else {
                        Text("Commencer")
                            .foregroundStyle(Color(viewModel.selectedCulture.backgroundColor))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(
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
                    
                    
                )
                .frame(width: 350, height: 75)
            }
            
            
            
            
        }
        
    }
}

#Preview {
    SummaryCard(viewModel: AppViewModel(), chapter: ChapterData.berbereChapters[0], index: 1)
}
