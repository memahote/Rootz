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

    var body: some View {
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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("FondAfrique").ignoresSafeArea())
    }
}

#Preview {
    PrincipalView()
}
