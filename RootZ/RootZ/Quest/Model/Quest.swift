//
//  Quest.swift
//  RootZ
//
//  Created by YacineBahaka  on 17/07/2025.
//

import SwiftUI

class Quest: Identifiable {
    let id: UUID = UUID()
    let name: String
    var value: Double
    let numberOfQuest: Double
    
    
    init(name: String, value: Double, numberOfQuest: Double) {
        self.name = name
        self.value = value
        self.numberOfQuest = numberOfQuest
    }
}


var quests: [[Quest]] = [
    [
        Quest(name: "Faire 2 chapitres", value: 1, numberOfQuest: 2),
        Quest(name: "Lire 3 pages", value: 1, numberOfQuest: 3),
        Quest(name: "Répondre à une question", value: 0, numberOfQuest: 1)
    ],
    
    [
        Quest(name: "Faire un exercice", value: 1, numberOfQuest: 1),
        Quest(name: "Faire un chapitre", value: 0, numberOfQuest: 1),
        Quest(name: "Compléter un quiz", value: 0, numberOfQuest: 1)
    ],
    
    [
        Quest(name: "Relire 2 anciens chapitres", value: 1, numberOfQuest: 2),
        Quest(name: "Faire un chapitre", value: 1, numberOfQuest: 3),
        Quest(name: "Compléter un quiz", value: 0, numberOfQuest: 1)
    ]
]

