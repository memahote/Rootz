//
//  ListQuests.swift
//  RootZ
//
//  Created by YacineBahaka  on 20/07/2025.
//

import SwiftUI

struct ListQuests: View {
    @Bindable var appViewModel: AppViewModel
    @Bindable var questViewModel: QuestViewModel
    
    var indexDuJour: Int {
        let calendar = Calendar.current
        let startOfDay = calendar.startOfDay(for: Date())
        let daysSinceEpoch = calendar.dateComponents([.day], from: Date(timeIntervalSince1970: 0), to: startOfDay).day ?? 0
        return daysSinceEpoch % quests.count
    }
    
    var body: some View {
        
        let questsOfTheDay = questViewModel.quests[indexDuJour]

                ForEach(questsOfTheDay) { quest in
                    QuestRow(appViewModel: appViewModel , quest: quest)
                    
                   
                
        }.frame(width: 331, height: 323)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(appViewModel.selectedCulture.accentColor)).ignoresSafeArea()
                
        ).overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 2)
        )
    }
}

#Preview {

    ListQuests(
        appViewModel: AppViewModel(),
        questViewModel: QuestViewModel(quests: quests, questOfMonthProgress: 0, berbereChapters: ChapterData.berbereChapters)
    )
}
