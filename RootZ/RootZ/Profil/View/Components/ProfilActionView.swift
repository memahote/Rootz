//
//  ProfilActionView.swift
//  RootZ
//
//  Created by Mounir on 22/07/2025.
// Action d'ajout d'ami et affichage de la liste d'ami 

import SwiftUI

struct ProfilActionView: View {
    let onPartagerProfil: () -> Void
    @Binding var showAjouterAmi: Bool
    @Binding var showListeAmis: Bool
//    @Binding var showShareSheet: Bool
//    @Binding var itemsToShare: [Any]

    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Button(action: {
                    showListeAmis = true
                }) {
                    HStack {
                        Image(systemName: "figure.stand")
                        Text("Liste d'amis")
                    }
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background(Color("ButtonDefault"))
                    .cornerRadius(12)
                }

                Spacer(minLength: 12)

                Button(action: {
                }) {
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
