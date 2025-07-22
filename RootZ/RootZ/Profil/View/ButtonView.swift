//
//  ButtonView.swift
//  RootZ
//
//  Created by Mounir on 20/07/2025.
//
// Bouton Ajouter ami et option partager 
import SwiftUI

struct ProfilActionsView: View {
    let onPartagerProfil: () -> Void
    let onAfficherAmis: () -> Void
    
    var body: some View {
        VStack(spacing: 12) {
            HStack {
               
                    
                Button(action: {
                    onAfficherAmis()
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
                    onPartagerProfil()
                }) {
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
