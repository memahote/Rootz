//
//  ProfilView.swift
//  RootZ
//
//  Created by Mounir on 17/07/2025.
// Vue Principale

import SwiftUI

struct ProfilView: View {
    @State private var viewModel = ProfilViewModel()
    @State private var amisViewModel = AmisViewModel()
    @State private var showPersonnalisation = false
    @State private var showAjouterAmi = false
    @State private var showListeAmis = false
    @State private var showShareSheet = false
    @State private var itemsToShare: [Any] = []
    @State private var selectedTab: Tab = .profil  // Onglet actif
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack {
                    HeaderView()
                    
                    VStack(alignment: .leading, spacing: 16) {
                        InformationView(
                            name: viewModel.user.name,
                            origins: viewModel.user.origins
                        )
                        
                        ProfilActionView(
                            onPartagerProfil: {
                                itemsToShare = ["Voici mon profil Rootz : \(viewModel.user.name)"]
                                showShareSheet = true
                            },
                            showAjouterAmi: $showAjouterAmi,
                            showListeAmis: $showListeAmis
                        )
                        
                        HStack(spacing: 16) {
                            BadgeView(emoji: "🔥", value: "\(viewModel.nbJoursActivite)", label: "Jours d’activité")
                            BadgeView(emoji: "⚡️", value: "\(viewModel.nbXP)", label: "XP gagnés")
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                        
                        RewardView()
                            .padding(.vertical)
                        
                        ButtonCustomiserProfil {
                            showPersonnalisation = true
                        }
                        
                        Spacer().frame(height: 40)
                    }
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.horizontal)
                }
                .padding(.bottom, 80) // Laisse de la place pour la tab bar
            }
            
            CustomTabBar(
                selectedTab: $selectedTab,
                tabColor: "ButtonAfrique",
                tabAccentColor: "AccentColor"
            )
        }
        .background(Color("FondAfrique")
        .ignoresSafeArea())
        .sheet(isPresented: $showListeAmis) {
            ListeAmisView(viewModel: amisViewModel)
        }
       
    }
}
#Preview {
    ProfilView()
}
