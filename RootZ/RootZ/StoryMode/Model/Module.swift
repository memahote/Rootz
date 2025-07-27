//
//  Module.swift
//  RootZ
//
//  Created by Mounir Emahoten on 17/07/2025.
//

import Foundation

struct Module : Identifiable {
    let id = UUID()
    let title : String
    let icon : String
    let isUnlocked : Bool
    let color : String
    let modulesPages : [ModulePage]
}
