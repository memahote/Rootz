//
//  ListQuests.swift
//  RootZ
//
//  Created by YacineBahaka  on 20/07/2025.
//

import SwiftUI

struct ListQuests: View {
    let quests: [[Quest]]
    
    var indexDuJour: Int {
        let calendar = Calendar.current
        let startOfDay = calendar.startOfDay(for: Date())
        let daysSinceEpoch = calendar.dateComponents([.day], from: Date(timeIntervalSince1970: 0), to: startOfDay).day ?? 0
        return daysSinceEpoch % quests.count
    }
    
    var body: some View {
        
        let questsOfTheDay = quests[indexDuJour]

                ForEach(questsOfTheDay) { quest in
                    QuestRow(quest: quest)
                
        }.frame(width: 331, height: 323)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.couleurAccent).ignoresSafeArea()
                
        ).overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 2) // 👈 Bordure noire
        )
    }
}

#Preview {
    ListQuests(quests: quests)
}
