//
//  StoryModeHeaderView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct StoryModeHeaderView: View {
    @Bindable var viewModel: AppViewModel
    
    var body: some View {
        VStack {
            
            HStack (alignment: .bottom){
                
                NavigationLink {
                    CultureChoice(viewModel: viewModel)
                } label: {
                    Image(viewModel.selectedCulture.flag)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45, height: 45)
                        .shadow(radius: 5)
                }
                
                Spacer()
                
                HStack (alignment: .top){
                    Text("0")
                        .font(.custom("Quicksand", size: 30))
                        .foregroundStyle(.gray)
                    Image(.flammeOff)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                }
                
            }
            .padding()
            
            
            NavigationLink {
                ChapterSummary(viewModel: viewModel)
            } label: {
                
                VStack{
                    Text("Chapitre \(viewModel.storyModeViewModel.currentChapterIndex + 1)")
                        .font(.custom("Baloo2", size: 32))
                        .foregroundStyle(.white)
                    
                    Text(viewModel.storyModeViewModel.currentChapter.title)
                        .font(.custom("Baloo2", size: 16))
                        .foregroundStyle(.white)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 350, height: 85)
                        .foregroundStyle(Color(viewModel.selectedCulture.buttonColor))
                    
                )
            }
            
            
        }
        
        Spacer()
    }
}

#Preview {
    StoryModeHeaderView(viewModel: AppViewModel())
}
