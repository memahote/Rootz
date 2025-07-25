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
        Joueur(rang: 6, nom: "Bill", score: 787),
        Joueur(rang: 7, nom: "Mélody", score: 350)
    ]

    @Published var classementAmi: [Joueur] = [
        Joueur(rang: 4, nom: "Chuck", score: 1889),
        Joueur(rang: 5, nom: "Mounir", score: 1760),
        Joueur(rang: 6, nom: "Claire", score: 787),
        Joueur(rang: 7, nom: "Garance", score: 350)
    ]

    @Published var podiumMonde: [Mascotte] = [
        Mascotte(imageName: "Planete1", score: 3210, position: 2),
        Mascotte(imageName: "Lion1", score: 5030, position: 1),
        Mascotte(imageName: "Cameleon1", score: 2789, position: 3)
    ]

    @Published var podiumAmi: [Mascotte] = [
        Mascotte(imageName: "Planete1", score: 1900, position: 2),
        Mascotte(imageName: "Lion1", score: 2200, position: 1),
        Mascotte(imageName: "Cameleon1", score: 1789, position: 3)
    ]
}
