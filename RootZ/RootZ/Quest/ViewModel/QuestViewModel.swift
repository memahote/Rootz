//
//  QuestViewModel.swift
//  RootZ
//
//  Created by YacineBahaka  on 17/07/2025.
//

import Foundation

@Observable
class QuestViewModel {
    var quests: [[Quest]]
    var questOfMonthProgress: Int = 0
    
    init(quests: [[Quest]], questOfMonthProgress: Int) {
        self.quests = quests
        self.questOfMonthProgress = questOfMonthProgress
    }
    

    func updateQuestProgress(for quest: Quest) {
//        Si isCompleted est true, return rien sinon on continue
        if let isCompleted = quest.isCompleted, isCompleted == false { return }
        
        quest.value += 1
        
        if quest.value >= quest.numberOfQuest {
            quest.value = quest.numberOfQuest
            quest.isCompleted = true
            questOfMonthProgress += 1
        }
    }
    
    var totalMonthlyQuests: Int {
//        Permet de déballer le tableau en 1 seul tableau car quests = [[Quest]]
//        En quests = [Quest]
        quests.flatMap { $0 }.count
    }
}

