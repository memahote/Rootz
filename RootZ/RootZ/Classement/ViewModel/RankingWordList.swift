//
//  RankingWordList.swift
//  RootZ
//
//  Created by Mounir on 24/07/2025.
//

import Foundation

class RankingWordlist: ObservableObject {
    @Published var classementMonde: [Joueur] = [
        Joueur(rang: 4, nom: "Mélanie", score: 1889),
         Joueur(rang: 5, nom: "Enzo", score: 1760),
         Joueur(rang: 6, nom: "Bill", score: 1600),
         Joueur(rang: 7, nom: "Mélody", score: 1475),
         Joueur(rang: 8, nom: "Chloé", score: 1340),
         Joueur(rang: 9, nom: "Ibrahim", score: 1220),
         Joueur(rang: 10, nom: "Lucie", score: 1100),
         Joueur(rang: 11, nom: "Nathan", score: 980),
         Joueur(rang: 12, nom: "Salomé", score: 850),
         Joueur(rang: 13, nom: "Joe", score: 720),
         Joueur(rang: 14, nom: "Léa", score: 610),
         Joueur(rang: 15, nom: "Yanis", score: 500)
        
    ]
    
    @Published var classementAmi: [Joueur] = [
        Joueur(rang: 4, nom: "Chuck", score: 1889),
        Joueur(rang: 5, nom: "Mounir", score: 1760),
        Joueur(rang: 6, nom: "Claire", score: 787),
        Joueur(rang: 7, nom: "Garance", score: 350),
        Joueur(rang: 8, nom: "Josh Hamton", score: 290),
        Joueur(rang: 9, nom: "Elina", score: 240),
        Joueur(rang: 10, nom: "Loris", score: 180)
    ]
    
    @Published var podiumMonde: [Mascotte] = [
        Mascotte(imageName: "Panda", score: 3210, position: 2),
        Mascotte(imageName: "Wapi", score: 5030, position: 1),
        Mascotte(imageName: "Coq", score: 2789, position: 3)
    ]
    
    @Published var podiumAmi: [Mascotte] = [
        Mascotte(imageName: "Planete1", score: 1900, position: 2),
        Mascotte(imageName: "Lion1", score: 2200, position: 1),
        Mascotte(imageName: "Cameleon1", score: 1890, position: 3)
    ]
}
