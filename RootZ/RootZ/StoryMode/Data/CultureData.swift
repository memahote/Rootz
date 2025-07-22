//
//  CultureData.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import Foundation

struct CultureData {
    
    static let allCultures : [CulturesModel] = [
        CulturesModel(
                    name: "Berbère",
                    flag: "Berber_flag",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: true,
                    progressbar: 0.6,
                    associatedCountries: ["maroc", "algérie", "tunisie"],
                       associatedRegions: ["afrique"],
                       keywords: ["berbere", "tamazight"]
                ),
     CulturesModel(
            name: "Réunion",
            flag: "Reunion_flag",
            chapters: ChapterData.berbereChapters,
            backgroundColor: "BubbleBackground",
            buttonColor: "ButtonBlue",
            accentColor: "BackgroundBlue",
            accent2Color: "CouleurAccent2",
            isUnlock: false,
            progressbar: 0.0,
            associatedCountries: ["réunion", "la réunion"],
            associatedRegions: ["afrique"],
            keywords: ["créole", "réunionnais"]
                ),
        
        CulturesModel(
                    name: "Berbère",
                    flag: "Berber_flag",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: true,
                    progressbar: 0.6,
                    associatedCountries: ["maroc", "algérie", "tunisie"],
                       associatedRegions: ["afrique"],
                       keywords: ["berbere", "tamazight"]
                )
        
    ]
}
