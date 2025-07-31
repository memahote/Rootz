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
    var berbereChapters: [Chapters]
//    var moduleType: ModuleType
    
    init(quests: [[Quest]], questOfMonthProgress: Int, berbereChapters: [Chapters]/*, moduleType: ModuleType*/) {
        self.quests = quests
        self.questOfMonthProgress = questOfMonthProgress
        self.berbereChapters = berbereChapters
//        self.moduleType = moduleType
    }
    

    func updateQuestProgress(for quest: Quest, moduleType: ModuleType) {
//        Si isCompleted est true, on continue sinon return rien
//        MARK: Utiliser le .type de berbereChapters pour valider le +1 dans la ProgressView
        
//        if moduleType == .quiz {
        print("coucou toi")
        print(quest.name)
            quest.value += 1
//        }
        
        if let isCompleted = quest.isCompleted, isCompleted == false { return }
        
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

