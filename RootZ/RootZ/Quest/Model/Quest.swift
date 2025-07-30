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
    var isCompleted: Bool?
    
    
    init(name: String, value: Double, numberOfQuest: Double, isCompleted: Bool) {
        self.name = name
        self.value = value
        self.numberOfQuest = numberOfQuest
        self.isCompleted = isCompleted
    }
}


