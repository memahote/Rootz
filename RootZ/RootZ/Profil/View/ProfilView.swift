//
//  ProfilView.swift
//  RootZ
//
//  Created by Mounir on 17/07/2025.
// Vue Principale

import SwiftUI

struct ProfilView: View {
    @Bindable  var profilViewModel:  ProfilViewModel
    @EnvironmentObject  var amisViewModel: AmisViewModel
    @Bindable   var appViewModel: AppViewModel
    
    var body: some View {
        NavigationStack{
            VStack {
                HeaderView(appViewModel: appViewModel)
                
                ScrollView {
                    VStack {
                        
                        VStack(alignment: .leading, spacing: 16) {
                            // Nom + origines
                            InformationView(
                                name: profilViewModel.user.name,
                                origins: profilViewModel.user.origins
                            )
                            
                            // Boutons partager, ajouter ami, liste amis
                            ProfilActionView(
                                AppViewModel: appViewModel, onPartagerProfil: { },
                                showAjouterAmi: $profilViewModel.showAjouterAmi,
                                showListeAmis: $profilViewModel.showListeAmis
                            )
                            // Badges activité et XP
                            HStack(spacing: 16) {
                                BadgeView(emoji: "🔥", value: "\(profilViewModel.nbJoursActivite)", label: "Jours d’activité")
                                BadgeView(emoji: "⚡️", value: "\(profilViewModel.nbXP)", label: "XP gagnés")
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            
                            // Récompenses
                            RewardView()
                                .padding(.vertical)
                            
                            // Bouton personnalisation
                            
                            NavigationLink(destination: {
                                CustomizeAvatarView(appViewModel: appViewModel, profilViewModel: profilViewModel)
                            }, label: {
                                ButtonCustomiserProfil(appViewModel: appViewModel)
                            })
                            
                            
                            Spacer().frame(height: 40)
                        }
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .padding(.horizontal)
                        
                    }
                    .padding(.bottom, 80) // pour ne pas que le scroll cache sous la tab bar
                }
                
            }
            .background(
                Color(appViewModel.selectedCulture.backgroundColor)
                    .ignoresSafeArea()
            )
            
            
            // Feuilles modales
            .sheet(isPresented: $profilViewModel.showListeAmis) {
                ListeAmisView(viewModel: amisViewModel, appViewModel: appViewModel,)
            }
        }
        
//        .sheet(isPresented: $profilViewModel.showPersonnalisation) {
//            Text("Personnalisation ici")
//        }
    }
}
#Preview {
    ProfilView(profilViewModel: (ProfilViewModel()), appViewModel: AppViewModel())
        .environmentObject(AmisViewModel())
}
