//
//  Cosmetic.swift
//  RootZ
//
//  Created by YacineBahaka  on 23/07/2025.
//

import SwiftUI

class Cosmetic: Identifiable{
    let id: UUID = UUID()
    let name: String
    let image: String
    let category: ECosmeticCategory
    let isUnlocked: Bool
    
    init(name: String, image: String, category: ECosmeticCategory, isUnlocked: Bool) {
        self.name = name
        self.image = image
        self.category = category
        self.isUnlocked = isUnlocked
    }
}


