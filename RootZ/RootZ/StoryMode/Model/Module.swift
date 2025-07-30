//
//  Module.swift
//  RootZ
//
//  Created by Mounir Emahoten on 17/07/2025.
//

import Foundation

enum ModuleType: String {
    case content
    case quiz
}

struct Module : Identifiable {
    let id = UUID()
    let title : String
    let icon : String
    var isUnlocked : Bool
    let color : String
    let modulesPages : [ModulePage]
    let type: ModuleType
    let quiz: [QuizQuestion]?
    var isFinish : Bool
}
