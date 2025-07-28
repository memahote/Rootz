//
//  QuestView.swift
//  RootZ
//
//  Created by YacineBahaka  on 17/07/2025.
//

import SwiftUI

struct QuestView: View {
    @Bindable var appViewModel: AppViewModel

    var body: some View {
        
        ZStack{
            Color(appViewModel.selectedCulture.backgroundColor).ignoresSafeArea()
            
            ScrollView {
                
//               MARK: - FIRST PART
                VStack{

                    HStack{
                        
//                        MARK: - MONTH
                        MonthOfQuests(appViewModel: (AppViewModel())).background(Color(appViewModel.selectedCulture.accentColor))
                        
                        Spacer()
                        
//                        MARK: - CIRCLE COSMETIC REWARD
                        CircleCosmeticReward(appViewModel: (AppViewModel()))
                    }.padding(.horizontal)
//                MARK: - TIME LEFT
                    
                    TimeLeftQuest()
                    
//                        MARK: - QUEST ACCOMPLISHED
                    QuestAccomplished(appViewModel: (AppViewModel()))
                    
                }.background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(appViewModel.selectedCulture.accentColor)).ignoresSafeArea()
                        .frame(width: 402, height: 330)
                )
//                MARK: - END FIRST PART
                
//                MARK: - SECOND PART
                VStack{
                    HStack {
                        Text("Quêtes du jour")
                        Spacer()
                    }.frame(width: 331)
                        .padding()
                        .bold()
                    
//                    MARK: - LIST OF QUESTS
                    ScrollView{
                        ListQuests(appViewModel: (AppViewModel()), quests: quests)
                    }.background(Color(appViewModel.selectedCulture.accentColor))
                }
                .padding(.bottom, 150)
//                MARK: - END SECOND PART
            }
        }
    }
}

#Preview {
    NavigationStack{
        QuestView(appViewModel: (AppViewModel()))
    }
}
