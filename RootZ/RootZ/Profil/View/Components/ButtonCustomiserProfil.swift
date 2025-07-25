//
//  ButtonCustomiserProfil.swift
//  RootZ
//
//  Created by Mounir on 20/07/2025.
//
// Bouton Personnaliser le profil 
import SwiftUI

struct ButtonCustomiserProfil: View {
    let onCustomiserProfil: () -> Void

    var body: some View {
        Button(action: {
            onCustomiserProfil()
        }) {
            HStack {
                Image(systemName: "paintbrush")
                Text("Personnaliser le profil")
            }
            .foregroundColor(.white)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity)
            .background(Color("ButtonDefault"))
            .cornerRadius(12)
        }
    }
}
