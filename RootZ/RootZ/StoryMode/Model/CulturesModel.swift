//
//  CulturesModel.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import Foundation

struct CulturesModel : Identifiable {
    let id = UUID()
    let name : String
    let flag : String
    let chapters : [Chapters]
    let primaryColor : String
    let secondaryColor : String
    let isUnlock : Bool
    var progressbar : Double
}
