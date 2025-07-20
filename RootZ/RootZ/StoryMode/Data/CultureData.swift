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
            chapters: ChapterData.berbereChapters,
            backgroundColor: "FondAfrique",
            buttonColor: "ButtonAfrique",
            accentColor: "CouleurAccent",
            accent2Color: "CouleurAccent2",
            isUnlock: true,
            progressbar: 0.6
        )
    
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
<<<<<<< HEAD
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
=======
        CulturesModel(
                    name: "Réunion",
                    flag: "Reunion_flag",
                    chapters: ChapterData.reunionChapters,
                    backgroundColor: "BubbleBackground",
                    buttonColor: "ButtonBlue",
                    accentColor: "BackgroundBlue",
                    accent2Color: "CouleurAccent2",
                    isUnlock: true,
                    progressbar: 0.1
>>>>>>> 7a6dfd0 (new : AppViewModel, culture change ok)
                ),
        
        CulturesModel(
                    name: "Japon",
                    flag: "Flag_of_Japan",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
<<<<<<< HEAD
                    isUnlock: true,
                    progressbar: 0.6,
                    associatedCountries: ["maroc", "algérie", "tunisie"],
                       associatedRegions: ["afrique"],
                       keywords: ["berbere", "tamazight"]
=======
                    isUnlock: false,
                    progressbar: 0.6
                ),
        CulturesModel(
                    name: "Quechua",
                    flag: "Flag_of_Peru",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: false,
                    progressbar: 0.6
                ),
        CulturesModel(
                    name: "Tamoule",
                    flag: "Flag_of_India",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: false,
                    progressbar: 0.6
                ),
        CulturesModel(
                    name: "Inuit",
                    flag: "Flag_of_Greenland",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: false,
                    progressbar: 0.6
                ),
        CulturesModel(
                    name: "Roumanie",
                    flag: "Flag_of_Romania",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: false,
                    progressbar: 0.6
                ),
        CulturesModel(
                    name: "Maori",
                    flag: "Flag_of_New_Zealand",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: false,
                    progressbar: 0.6
                ),
        CulturesModel(
                    name: "Celtique",
                    flag: "Flag_of_Ireland",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: false,
                    progressbar: 0.6
>>>>>>> 7a6dfd0 (new : AppViewModel, culture change ok)
                )
        
    ]
}
