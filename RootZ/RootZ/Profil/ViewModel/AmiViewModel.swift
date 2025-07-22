//
//  AmiViewModel.swift
//  RootZ
//
//  Created by Mounir on 22/07/2025.
//

import Foundation

class AmisViewModel: ObservableObject {
    @Published var amis: [String] = []

    func ajouterAmi(nom: String) {
        guard !nom.isEmpty else { return }
        amis.append(nom)
    }
    func supprimerAmi(nom: String) {
            amis.removeAll { $0 == nom }
        }
}
