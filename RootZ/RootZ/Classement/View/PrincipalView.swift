//
//  ClassementView.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

import SwiftUI

struct PrincipalView: View {
    @State private var selectedType: ClassementType = .monde
    @StateObject private var viewModel = RankingWordlist()
    @State private var selectedTab: Tab = .ranking  // Onglet actif

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                ScrollView {
                    VStack {
                        Picker("Classement", selection: $selectedType) {
                            ForEach(ClassementType.allCases) { type in
                                Text(type.rawValue).tag(type)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding()
                        
                        HeaderViewRanking()
                        
                        PodiumView(mascottes: selectedType == .monde ? viewModel.podiumMonde : viewModel.podiumAmi)
                        
                        ClassementListeView(joueurs: selectedType == .monde ? viewModel.classementMonde : viewModel.classementAmi)
                            .padding(.vertical)
                    }
                    .padding(.bottom, 80) // Pour ne pas que le scroll cache la tab bar
                }
            }
            
            // CustomTabBar
            CustomTabBar(
                selectedTab: $selectedTab,
                tabColor: "ButtonAfrique",
                tabAccentColor: "AccentColor"
            )
        }
        .ignoresSafeArea(.keyboard) // Pour éviter les bugs avec le clavier
        .background(Color("FondAfrique").ignoresSafeArea())
    }
}
#Preview {
    PrincipalView()
}
