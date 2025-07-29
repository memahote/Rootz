//
//  Chapters.swift
//  RootZ
//
//  Created by Mounir Emahoten on 17/07/2025.
//

import Foundation

struct Chapters : Identifiable {
    let id = UUID()
    let nbChap : Int
    let title : String
    let description : String
    let isUnlocked : Bool
    let progression : Double
    var modules : [Module]
}
