//
//  ClassementListeView.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

import SwiftUI

struct ClassementListeView: View {
    @Bindable   var appViewModel: AppViewModel
    let joueurs: [Joueur]

    var body: some View {
        VStack {
            ForEach(joueurs) { joueur in
                HStack {
                    Text("\(joueur.rang). \(joueur.nom)")
                        .font(.custom("Quicksand-VariableFont_wght", size: 22))
                    Spacer()
                    Text("\(joueur.score)")
                        .font(.custom("Quicksand-Bold", size: 22))
                }
                .padding()
                .background(Color(appViewModel.selectedCulture.accentColor))
                .cornerRadius(6)
            }
        }
        .padding()
        .background(Color(appViewModel.selectedCulture.backgroundColor))
    }
}

#Preview {
    ClassementListeView(appViewModel: AppViewModel(), joueurs: [
        Joueur(rang: 1, nom: "Exemple", score: 1500),
        Joueur(rang: 2, nom: "Test", score: 1400)
    ])
}
