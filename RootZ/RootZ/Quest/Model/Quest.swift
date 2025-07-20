//
//  Quest.swift
//  RootZ
//
//  Created by YacineBahaka  on 17/07/2025.
//

import SwiftUI

class Quest: Identifiable {
    let id: UUID = UUID()
    var name: String
    var numberOfQuest: Int
    
    init(name: String, numberOfQuest: Int) {
        self.name = name
        self.numberOfQuest = numberOfQuest
    }
}

var quests: [Quest] = [
    Quest(name: "Planter les fleurs", numberOfQuest: 2),
    Quest(name: "Cueillir les pommes", numberOfQuest: 4),
    Quest(name: "Manger des pommes", numberOfQuest: 1)
]
