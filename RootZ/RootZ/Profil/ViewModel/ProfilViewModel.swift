//
//  ProfilViewModel.swift
//  RootZ
//
//  Created by Mounir on 17/07/2025.
//

import Foundation
import SwiftUI

class ProfilViewModel: ObservableObject {
    @Published var selectedCulture: CulturesModel = CultureData.defaultCulture

    // MARK: - Données utilisateur
    @Published var user: UserModel = UserModel(
        name: "Josh Hamton",
        origins: ["Berber_flag", "Reunion_flag"],
        creationDate: Date(),
        mascotte: "Lion",
        score: 1280
    )
    
    @Published var nbJoursActivite: Int = 12
    @Published var nbXP: Int = 454

    // MARK: - États d’affichage
    @Published var showPersonnalisation: Bool = false
    @Published var showAjouterAmi: Bool = false
    @Published var showListeAmis: Bool = false
   

    @Published var selectedTab: Tab = .profil // enum Tab (profil, classement, etc.)

    // MARK: - Méthodes
    func afficherAmis() {
        showListeAmis = true
    }

    func texteAPartager() -> String {
        return "Voici mon profil Rootz : \(user.name)"
    }
}




