//
//  QuestAccomplished.swift
//  RootZ
//
//  Created by YacineBahaka  on 20/07/2025.
//

import SwiftUI

struct QuestAccomplished: View {
    @Bindable var appViewModel: AppViewModel
    @Bindable var questViewModel: QuestViewModel
    
    var body: some View {
        VStack{
            HStack{
                Text("Finir les quêtes du mois")
                Text("\(questViewModel.questOfMonthProgress)/\(questViewModel.totalMonthlyQuests)")
            }.bold()
            
            ProgressView(value: Double(questViewModel.questOfMonthProgress), total: Double(questViewModel.totalMonthlyQuests))
                .frame(width: 48, height: 50)
                .tint(.green)
                .scaleEffect(6.0)
        }
        .frame(width: 331, height: 108)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(appViewModel.selectedCulture.backgroundColor)).ignoresSafeArea()
                
        ).overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 2)
            
        ).padding(.bottom)
    }
}

#Preview {    
    QuestAccomplished(appViewModel: (AppViewModel()), questViewModel: (QuestViewModel(quests: quests, questOfMonthProgress: 0, berbereChapters: ChapterData.berbereChapters, moduleType: .quiz)))
}
