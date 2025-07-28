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
                    keywords: ["berbere", "tamazight","arabe","marocain","algérien"]
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
                    progressbar: 0.0,
                    associatedCountries: ["réunion", "la réunion", "île de la Réunion",],
                    associatedRegions: ["afrique","Océan Indien"],
                    keywords: ["créole", "réunionnais"]
                ),
        
        CulturesModel(
                    name: "Japon",
                    flag: "Japon_flag",
                    mascott: "Lion1",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: true,
                    progressbar: 0.6,
                    associatedCountries: ["japon"],
                    associatedRegions: ["asie"],
                    keywords: ["shinto", "samurai", "japonais"]

                ),
        CulturesModel(
                    name: "Quechua",
                    flag: "Peru_flag",
                    mascott: "Lion1",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: false,
                    progressbar: 0.6,
                    associatedCountries: ["pérou", "perou", "bolivie", "équateur", "equateur"],
                    associatedRegions: ["amérique", "amerique"],
                    keywords: ["quechua", "inca", "andine"]
                ),
        CulturesModel(
                    name: "Tamoule",
                    flag: "India_flag",
                    mascott: "Lion1",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: false,
                    progressbar: 0.6,
                    associatedCountries: ["inde", "sri lanka", "malaisie"],
                    associatedRegions: ["asie"],
                    keywords: ["tamoul", "tamil", "hindou"]
                ),
        CulturesModel(
                    name: "Inuit",
                    flag: "Greenland_flag",
                    mascott: "Lion1",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: false,
                    progressbar: 0.6,
                    associatedCountries: ["canada", "groenland", "alaska"],
                    associatedRegions: ["amérique", "amerique", "arctique"],
                    keywords: ["inuit", "eskimo", "arctique"]
                ),
        CulturesModel(
                    name: "Roumanie",
                    flag: "Romania_flag",
                    mascott: "Lion1",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: false,
                    progressbar: 0.6,
                    associatedCountries: ["roumanie"],
                    associatedRegions: ["europe"],
                    keywords: ["roumain", "balkan", "carpates"]
                ),
        CulturesModel(
                    name: "Maori",
                    flag: "New_Zealand_flag",
                    mascott: "Lion1",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: false,
                    progressbar: 0.6,
                    associatedCountries: ["nouvelle-zélande", "nouvelle zelande", "new zealand"],
                    associatedRegions: ["océanie", "oceanie"],
                    keywords: ["maori", "aotearoa", "haka"]
                ),
        CulturesModel(
                    name: "Celtique",
                    flag: "Ireland_flag",
                    mascott: "Lion1",
                    chapters: ChapterData.berbereChapters,
                    backgroundColor: "FondAfrique",
                    buttonColor: "ButtonAfrique",
                    accentColor: "CouleurAccent",
                    accent2Color: "CouleurAccent2",
                    isUnlock: false,
                    progressbar: 0.6,
                    associatedCountries: ["irlande", "ecosse", "bretagne", "pays de galles"],
                    associatedRegions: ["europe"],
                    keywords: ["celtique", "gaélique", "druidique", "celte"]
                ),
        CulturesModel(
            name: "France",
            flag: "France_flag",
            mascott: "CoqMascotte",
            chapters: ChapterData.berbereChapters,
            backgroundColor: "FondEurope",
            buttonColor: "ButtonEurope",
            accentColor: "CouleurAccentFrance",
            accent2Color: "CouleurAccent2France",
            isUnlock: false,
            progressbar: 0.3,
            associatedCountries: [
                "france", "belgique", "suisse", "luxembourg", "canada", "monaco"
            ],
            associatedRegions: [
                "europe", "europa", "hexagone", "francophonie", "francophone"
            ],
            keywords: [
                "francophone", "langue française", "révolution", "renaissance", "châteaux", "gothique",
                "gastronomie", "culture française", "cathédrale", "paris", "bleu blanc rouge"
            ]
        ),
        CulturesModel(
            name: "Maghrébine",
            flag: "Maghreb_flag",
            mascott: "FennecMascotte",
            chapters: ChapterData.berbereChapters,
            backgroundColor: "FondMaghreb",
            buttonColor: "ButtonMaghreb",
            accentColor: "CouleurMaghrebAccent",
            accent2Color: "CouleurAccent2",
            isUnlock: false,
            progressbar: 0.0,
            associatedCountries: ["maroc", "algérie", "tunisie", "libye", "mauritanie"],
            associatedRegions: ["afrique du nord", "maghreb","afrique"],
            keywords: ["arabe", "maghrébin", "islam", "ramadan", "coran", "tajine", "médina", "darija"]
        ),
        CulturesModel(
            name: "Touarègue",
            flag: "Touareg_flag",
            mascott: "DromadaireMascotte",
            chapters: ChapterData.berbereChapters,
            backgroundColor: "FondDesert",
            buttonColor: "ButtonDesert",
            accentColor: "CouleurTouareg",
            accent2Color: "CouleurAccent2",
            isUnlock: false,
            progressbar: 0.0,
            associatedCountries: ["mali", "niger", "algérie", "libye", "burkina faso"],
            associatedRegions: ["sahara", "sahel", "afrique"],
            keywords: ["touareg", "nomade", "amazigh", "bleu", "désert", "tifinagh", "sable", "azawad"]
        )


        


        
    ]
}
