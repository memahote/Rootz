//
//  ClassementListeView.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

import SwiftUI

struct ClassementListeView: View {
    @StateObject private var viewModel = ClassementViewModel()
    
    var body: some View {
        VStack(spacing: 12) {
            ForEach(viewModel.joueurs) { joueur in
                HStack {
                    Text("\(joueur.rang). \(joueur.nom)")
                        .font(.system(size: 20, weight: .bold))
                    Spacer()
                    Text("\(joueur.score)")
                        .font(.system(size: 20, weight: .bold))
                }
                .padding()
                .background(Color(red: 253/255, green: 218/255, blue: 184/255)) // #FDDAB8
                .cornerRadius(6)
            }
        }
        .padding()
        .background(Color("CouleurAccent"))
    }
}


#Preview {
    ClassementListeView()
}
