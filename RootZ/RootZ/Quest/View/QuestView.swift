//
//  QuestView.swift
//  RootZ
//
//  Created by YacineBahaka  on 17/07/2025.
//

import SwiftUI

struct QuestView: View {
    @Bindable var appViewModel: AppViewModel
    @Bindable var questViewModel: QuestViewModel
    
    var body: some View {
        
        ZStack{
            Color(appViewModel.selectedCulture.backgroundColor).ignoresSafeArea()
            
            VStack {
                
                //               MARK: - FIRST PART
                VStack{
                    
                    
                    HStack{
                        //                        MARK: - MONTH
                        MonthOfQuests(appViewModel: appViewModel).background(Color(appViewModel.selectedCulture.accentColor))
                        
                        Spacer()
                        
                        //                        MARK: - CIRCLE COSMETIC REWARD
                        CircleCosmeticReward(appViewModel: appViewModel)
                    }.padding(.horizontal)
                    
                    
                    //                MARK: - TIME LEFT
                    TimeLeftQuest()
                    
                    //                        MARK: - QUEST ACCOMPLISHED
                    QuestAccomplished(appViewModel: appViewModel, questViewModel: questViewModel)
                    
                }.padding(.vertical)
                    .background(
                        ZStack {
                            Color(appViewModel.selectedCulture.accentColor)
                                .ignoresSafeArea(edges: .top)
                        }
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
                        ListQuests(appViewModel: appViewModel, questViewModel: questViewModel)
                    }
                    .frame(height: 300)
                    .scrollIndicators(.hidden)
                    
                }.padding(.bottom, 145)
                //                MARK: - END SECOND PART
            }
        }
    }
}

#Preview {
    
        QuestView(appViewModel: AppViewModel(), questViewModel: QuestViewModel(quests: quests, questOfMonthProgress: 0, berbereChapters: ChapterData.berbereChapters))
}
