//
//  ProfilViewModel.swift
//  RootZ
//
//  Created by Mounir on 17/07/2025.
//

import Foundation
import SwiftUI

@Observable
class ProfilViewModel {
    var selectedCulture: CulturesModel = CultureData.defaultCulture

    // MARK: - Données utilisateur
    var user: UserModel = UserModel(
        name: "Josh Hamton",
        origins: ["Berber_flag", "Reunion_flag"],
        creationDate: Date(),
        mascotte: "Lion1",
        score: 1280
    )
    
    var nbJoursActivite: Int = 12
    var nbXP: Int = 454

    // MARK: - États d’affichage
    var showPersonnalisation: Bool = false
    var showAjouterAmi: Bool = false
    var showListeAmis: Bool = false
   

    var selectedTab: Tab = .profil // enum Tab (profil, classement, etc.)

    // MARK: - Méthodes
    func afficherAmis() {
        showListeAmis = true
    }

    func texteAPartager() -> String {
        return "Voici mon profil Rootz : \(user.name)"
    }
}




