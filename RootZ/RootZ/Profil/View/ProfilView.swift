//
//  ProfilView.swift
//  RootZ
//
//  Created by Mounir on 17/07/2025.
// Vue Principale

import SwiftUI

struct ProfilView: View {
    @StateObject private var viewModel = ProfilViewModel()
    @State private var amisViewModel = AmisViewModel()
    let appViewModel: AppViewModel

    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack {
                    HeaderView()

                    VStack(alignment: .leading, spacing: 16) {
                        // Nom + origines
                        InformationView(
                            name: viewModel.user.name,
                            origins: viewModel.user.origins
                        )

                        // Boutons partager, ajouter ami, liste amis
                        ProfilActionView(
                            onPartagerProfil: { },
                            showAjouterAmi: $viewModel.showAjouterAmi,
                            showListeAmis: $viewModel.showListeAmis
                        )
                        // Badges activité et XP
                        HStack(spacing: 16) {
                            BadgeView(emoji: "🔥", value: "\(viewModel.nbJoursActivite)", label: "Jours d’activité")
                            BadgeView(emoji: "⚡️", value: "\(viewModel.nbXP)", label: "XP gagnés")
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)

                        // Récompenses
                        RewardView()
                            .padding(.vertical)

                        // Bouton personnalisation
                        ButtonCustomiserProfil {
                            viewModel.showPersonnalisation = true
                        }

                        Spacer().frame(height: 40)
                    }
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.horizontal)
                    
                }
                .padding(.bottom, 80) // pour ne pas que le scroll cache sous la tab bar
            }

            // Tab bar personnalisée
            CustomTabBar(
                selectedTab: $viewModel.selectedTab,
                tabColor: appViewModel.selectedCulture.buttonColor,
                tabAccentColor: appViewModel.selectedCulture.backgroundColor
            )
        }
        .background(
            Color(appViewModel.selectedCulture.backgroundColor)
                .ignoresSafeArea()
        )

        // Feuilles modales
        .sheet(isPresented: $viewModel.showListeAmis) {
            ListeAmisView(viewModel: amisViewModel)
        }
        
        .sheet(isPresented: $viewModel.showPersonnalisation) {
            Text("Personnalisation ici")
        }
    }
}
#Preview {
    ProfilView(appViewModel: AppViewModel()) // ✅ Instance ici
}
