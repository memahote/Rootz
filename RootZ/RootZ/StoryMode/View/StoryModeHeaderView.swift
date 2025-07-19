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
            
            Button {
                
            } label: {
                
                VStack{
                    Text("Chapitre 1")
                        .font(.custom("Baloo2", size: 32))
                        .foregroundStyle(.white)
                    
                    Text("Les symboles de ma culture")
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
    StoryModeHeaderView(viewModel: AppViewModel(
        selectedCulture: CulturesModel(
            name: "Berbère",
            flag: "Berber_flag",
            chapters: ChapterData.berbereChapters,
            backgroundColor: "FondAfrique",
            buttonColor: "ButtonAfrique",
            accentColor: "CouleurAccent",
            accent2Color: "CouleurAccent2",
            isUnlock: true,
            progressbar: 0.6
        )
    ))
}
