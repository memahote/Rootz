//
//  ButtonCustomiserProfil.swift
//  RootZ
//
//  Created by Mounir on 20/07/2025.
//
// Bouton Personnaliser le profil 
import SwiftUI

struct ButtonCustomiserProfil: View {
    @Bindable var appViewModel: AppViewModel

    var body: some View {

            HStack {
                Image(systemName: "paintbrush")
                Text("Personnaliser le profil")
            }
            .foregroundColor(.white)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity)
            .background(Color(appViewModel.selectedCulture.buttonColor))
            .cornerRadius(12)
        }
    }
