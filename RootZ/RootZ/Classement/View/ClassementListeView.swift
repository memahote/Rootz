//
//  ClassementListeView.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

import SwiftUI

struct ClassementListeView: View {
    let joueurs: [Joueur]

    var body: some View {
        VStack {
            ForEach(joueurs) { joueur in
                HStack {
                    Text("\(joueur.rang). \(joueur.nom)")
                        .font(.system(size: 20, weight: .bold))
                    Spacer()
                    Text("\(joueur.score)")
                        .font(.system(size: 20, weight: .bold))
                }
                .padding()
                .background(Color("FondAfrique"))
                .cornerRadius(6)
            }
        }
        .padding()
        .background(Color("CouleurAccent"))
    }
}

#Preview {
    ClassementListeView(joueurs: [
        Joueur(rang: 1, nom: "Exemple", score: 1500),
        Joueur(rang: 2, nom: "Test", score: 1400)
    ])
}
