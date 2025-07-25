//
//  CultureData.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import Foundation

struct CultureData {
    
    static let defaultCulture = CulturesModel(
        name: "Berbère",
        flag: "Berber_flag",
        mascott: "Lion1",
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
    
    static let allCultures : [CulturesModel] = [
        CulturesModel(
            name: "Berbère",
            flag: "Berber_flag",
            mascott: "Lion1",
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
            mascott: "Cameleon1",
            chapters: ChapterData.reunionChapters,
            backgroundColor: "BubbleBackground",
            buttonColor: "ButtonBlue",
            accentColor: "BackgroundBlue",
            accent2Color: "CouleurAccent2",
            isUnlock: true,
            progressbar: 0.1,
            associatedCountries: ["maroc", "algérie", "tunisie"],
            associatedRegions: ["afrique"],
            keywords: ["berbere", "tamazight"]
        ),
        CulturesModel(
            name: "Japon",
            flag: "Flag_of_Japan",
            mascott: "Lion1",
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
            name: "Quechua",
            flag: "Flag_of_Peru",
            mascott: "Lion1",
            chapters: ChapterData.berbereChapters,
            backgroundColor: "FondAfrique",
            buttonColor: "ButtonAfrique",
            accentColor: "CouleurAccent",
            accent2Color: "CouleurAccent2",
            isUnlock: false,
            progressbar: 0.6,
            associatedCountries: ["maroc", "algérie", "tunisie"],
            associatedRegions: ["afrique"],
            keywords: ["berbere", "tamazight"]
        ),
        CulturesModel(
            name: "Tamoule",
            flag: "Flag_of_India",
            mascott: "Lion1",
            chapters: ChapterData.berbereChapters,
            backgroundColor: "FondAfrique",
            buttonColor: "ButtonAfrique",
            accentColor: "CouleurAccent",
            accent2Color: "CouleurAccent2",
            isUnlock: false,
            progressbar: 0.6,
            associatedCountries: ["maroc", "algérie", "tunisie"],
            associatedRegions: ["afrique"],
            keywords: ["berbere", "tamazight"]
        ),
        CulturesModel(
            name: "Inuit",
            flag: "Flag_of_Greenland",
            mascott: "Lion1",
            chapters: ChapterData.berbereChapters,
            backgroundColor: "FondAfrique",
            buttonColor: "ButtonAfrique",
            accentColor: "CouleurAccent",
            accent2Color: "CouleurAccent2",
            isUnlock: false,
            progressbar: 0.6,
            associatedCountries: ["maroc", "algérie", "tunisie"],
            associatedRegions: ["afrique"],
            keywords: ["berbere", "tamazight"]
        ),
        CulturesModel(
            name: "Roumanie",
            flag: "Flag_of_Romania",
            mascott: "Lion1",
            chapters: ChapterData.berbereChapters,
            backgroundColor: "FondAfrique",
            buttonColor: "ButtonAfrique",
            accentColor: "CouleurAccent",
            accent2Color: "CouleurAccent2",
            isUnlock: false,
            progressbar: 0.6,
            associatedCountries: ["maroc", "algérie", "tunisie"],
            associatedRegions: ["afrique"],
            keywords: ["berbere", "tamazight"]
        ),
        CulturesModel(
            name: "Maori",
            flag: "Flag_of_New_Zealand",
            mascott: "Lion1",
            chapters: ChapterData.berbereChapters,
            backgroundColor: "FondAfrique",
            buttonColor: "ButtonAfrique",
            accentColor: "CouleurAccent",
            accent2Color: "CouleurAccent2",
            isUnlock: false,
            progressbar: 0.6,
            associatedCountries: ["maroc", "algérie", "tunisie"],
            associatedRegions: ["afrique"],
            keywords: ["berbere", "tamazight"]
        ),
        CulturesModel(
            name: "Celtique",
            flag: "Flag_of_Ireland",
            mascott: "Lion1",
            chapters: ChapterData.berbereChapters,
            backgroundColor: "FondAfrique",
            buttonColor: "ButtonAfrique",
            accentColor: "CouleurAccent",
            accent2Color: "CouleurAccent2",
            isUnlock: false,
            progressbar: 0.6,
            associatedCountries: ["maroc", "algérie", "tunisie"],
            associatedRegions: ["afrique"],
            keywords: ["berbere", "tamazight"]
        )
        
    ]
}
