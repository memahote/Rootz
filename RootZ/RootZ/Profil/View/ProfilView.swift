//
//  ProfilView.swift
//  RootZ
//
//  Created by Mounir on 17/07/2025.
// Vue Principale

import SwiftUI

struct ProfilView: View {
    @StateObject private var viewModel = ProfilViewModel()
    @StateObject private var amisViewModel = AmisViewModel()

    @State private var showPersonnalisation = false
    @State private var showAjouterAmi = false
    @State private var showListeAmis = false
    @State private var showShareSheet = false
    @State private var itemsToShare: [Any] = []

    var body: some View {
        VStack {
            HeaderView()

            VStack(alignment: .leading, spacing: 16) {
                // Infos utilisateur
                InformationView(
                    name: viewModel.user.name,
                    origins: viewModel.user.origins
                )

                // Actions (amis + partage)
                ProfilActionView(
                    onPartagerProfil: {
                        // Quand on appuie sur le bouton Partager
                        itemsToShare = ["Voici mon profil Rootz : \(viewModel.user.name)"]
                        showShareSheet = true
                    },
                    showAjouterAmi: $showAjouterAmi,
                    showListeAmis: $showListeAmis
                )

                // Stats
                HStack(spacing: 16) {
                    BadgeView(emoji: "🔥", value: "\(viewModel.nbJoursActivite)", label: "Jours d’activité")
                    BadgeView(emoji: "⚡️", value: "\(viewModel.nbXP)", label: "XP gagnés")
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)

                // Badges
                RewardView()
                    .padding(.vertical)

                // Bouton personnalisation
                ButtonCustomiserProfil {
                    showPersonnalisation = true
                }

                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .padding(.horizontal)
        }

        // Modales
     
        .sheet(isPresented: $showListeAmis) {
            ListeAmisView(viewModel: amisViewModel)
        }
//        .sheet(isPresented: $showShareSheet) {
//            ShareSheet(items: itemsToShare)
//        }
    }
}

#Preview {
    ProfilView()
}
