//
//  ClassementView.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

import SwiftUI

struct PrincipalView: View {
    @State private var selectedType: ClassementType = .monde
    @EnvironmentObject  var viewModel: RankingWordlist
    @State private var selectedTab: Tab = .ranking  // Onglet actif
        @Bindable   var appViewModel: AppViewModel
    
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
                        
                        PodiumView(mascottes: selectedType == .monde ? viewModel.podiumMonde : viewModel.podiumAmi, appViewModel: appViewModel)
                        
                        ClassementListeView(appViewModel: appViewModel, joueurs: selectedType == .monde ? viewModel.classementMonde : viewModel.classementAmi)
                            .padding(.vertical)
                    }
                    .padding(.bottom, 80) // Pour ne pas que le scroll cache la tab bar
                }
            }
            
        }
        .ignoresSafeArea(.keyboard) // Pour éviter les bugs avec le clavier
        .background(Color(appViewModel.selectedCulture.backgroundColor)
            .ignoresSafeArea())
    }
}
#Preview {
    PrincipalView(appViewModel: AppViewModel())
        .environmentObject(RankingWordlist())
}
