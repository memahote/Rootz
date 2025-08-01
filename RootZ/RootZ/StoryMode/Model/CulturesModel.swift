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
    let mascott : String
    let chapters : [Chapters]
    let backgroundColor : String
    let buttonColor : String
    let accentColor : String
    let accent2Color : String
    let isUnlock : Bool
    var progressbar : Double
    
    let associatedCountries: [String]
    let associatedRegions: [String]
    let keywords: [String]
}
