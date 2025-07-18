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
                    primaryColor: "#C94411",
                    secondaryColor: "#E39163",
                    isUnlock: true,
                    progressbar: 0.6
                ),
        CulturesModel(
                    name: "Réunion",
                    flag: "Reunion_flag",
                    chapters: ChapterData.berbereChapters,
                    primaryColor: "#C94411",
                    secondaryColor: "#E39163",
                    isUnlock: false,
                    progressbar: 0
                ),
        CulturesModel(
                    name: "Berbère",
                    flag: "Berber_flag",
                    chapters: ChapterData.berbereChapters,
                    primaryColor: "#C94411",
                    secondaryColor: "#E39163",
                    isUnlock: true,
                    progressbar: 0.2
                ),
        
    ]
}
