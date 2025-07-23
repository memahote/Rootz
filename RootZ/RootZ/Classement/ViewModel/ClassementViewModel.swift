//
//  ClassementViewMolde.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

import Foundation

class ClassementViewModel: ObservableObject {
    @Published var joueurs: [Joueur] = [
        Joueur(rang: 4, nom: "Chuck", score: 1889),
        Joueur(rang: 5, nom: "Mounir", score: 1760),
        Joueur(rang: 6, nom: "Claire", score: 787),
        Joueur(rang: 7, nom: "Garance", score: 787)
    ]
class RankingWordlist: ObservableObject {
    @Published var wordlist: [Joueur] = [
        Joueur(rang: 4, nom: "Bill", score: 1889),
        Joueur(rang: 5, nom: "Enzo", score: 1760),
        Joueur(rang: 6, nom: "Mélanie", score: 787),
        Joueur(rang: 7, nom: "Mélody", score: 787)
    ]
        
    }
}
