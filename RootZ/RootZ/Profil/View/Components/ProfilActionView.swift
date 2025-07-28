//
//  ProfilActionView.swift
//  RootZ
//
//  Created by Mounir on 22/07/2025.
// Action d'ajout d'ami et affichage de la liste d'ami

import SwiftUI

struct ProfilActionView: View {
    @Bindable var AppViewModel: AppViewModel
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
                    .background(Color(AppViewModel.selectedCulture.buttonColor))
                    .cornerRadius(12)
                }
                
                Spacer(minLength: 12)
                
                ShareLink(item: URL(string: "https://apps.apple.com/fr/app/dexio-your-pokédex/id1234567890")!,
                          subject: Text("viewModel.shareContent.subject"),
                          message: Text("viewModel.shareContent.message"),
                          preview: .init("Voici mon profil Rootz :")) {
                    
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
