//
//  Quests.swift
//  RootZ
//
//  Created by YacineBahaka  on 20/07/2025.
//

import SwiftUI

struct QuestRow: View {
    var quest: Quest
    var body: some View {
        Text(quest.name)
            .bold()
        ProgressView(value: quest.value, total: quest.numberOfQuest)
            .frame(width: 48, height: 50)
            .tint(.green)
            .scaleEffect(6.0)
            .padding(.bottom)
    }
}

#Preview {
//    QuestRow(quest: quest)
}
