//
//  ListQuests.swift
//  RootZ
//
//  Created by YacineBahaka  on 20/07/2025.
//

import SwiftUI

struct ListQuests: View {
    let quests: [Quest]
    var body: some View {
        
            ForEach(quests) { ques in
                QuestRow(quest: ques)
            
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
