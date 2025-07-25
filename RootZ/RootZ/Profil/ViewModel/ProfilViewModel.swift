//
//  ProfilViewModel.swift
//  RootZ
//
//  Created by Mounir on 17/07/2025.
//

import Foundation
import SwiftUI

class ProfilViewModel: ObservableObject {
    var user: UserModel = UserModel(
        name: "Josh Hamton",
        origins: ["Berber_flag", "Reunion_flag"],
        creationDate: Date(),
        mascotte: "Lion", 
        score: 1280
    )
    
     var nbJoursActivite: Int = 12
     var nbXP: Int = 454
    
    func afficherAmis() {
        print("Affiche liste d'amis...")
    }
    func partagerProfil() {
        print("Partage du profil...")
    }
    func texteAPartager() -> String {
        return "Voici mon profil Rootz : \(user.name)"
    }
}




