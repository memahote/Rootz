//
//  ProfilViewModel.swift
//  RootZ
//
//  Created by Mounir on 17/07/2025.
//

import Foundation
import SwiftUI

class ProfilViewModel: ObservableObject {
    @Published var user: UserModel = UserModel(
        name: "Josh Hamton",
        origins: ["Berber_flag", "Reunion_flag"],
        creationDate: Date()
    )
    
    @Published var nbJoursActivite: Int = 12
    @Published var nbXP: Int = 454
    
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

final class RewardViewModel: ObservableObject {
    @Published var badges: [RewardBadge] = [
        RewardBadge(title: "Initié", emoji: "🥇", color: .blue),
        RewardBadge(title: "Voyageur", emoji: "⚡️", color: .green),
        RewardBadge(title: "Joie", emoji: "🎉", color: .cyan),
        RewardBadge(title: "Sage", emoji: "🦁", color: .orange),
        RewardBadge(title: "Ambassadeur", emoji: "🏅", color: .purple),
        RewardBadge(title: "Explorateur", emoji: "🔍", color: .mint),
        RewardBadge(title: "Origine", emoji: "🌍", color: .indigo),
        RewardBadge(title: "Héritier", emoji: "🔥", color: .red),
        RewardBadge(title: "Premier défi", emoji: "💪", color: .green),
        RewardBadge(title: "Objectif atteint", emoji: "🎯", color: .blue),
        RewardBadge(title: "Champion du mois", emoji: "👑", color: .yellow),
        RewardBadge(title: "Super star", emoji: "🌟", color: .purple),
        RewardBadge(title: "Progression continue", emoji: "📈", color: .orange),
        RewardBadge(title: "Énergie max", emoji: "⚡️", color: .pink),
        RewardBadge(title: "Maître du focus", emoji: "🧠", color: .cyan),
        RewardBadge(title: "Nouveau départ", emoji: "🌱", color: .mint),
        RewardBadge(title: "7 jours d’affilée", emoji: "📅", color: .blue),
        RewardBadge(title: "30 jours actifs", emoji: "📆", color: .purple),
        RewardBadge(title: "Départ en flèche", emoji: "🚀", color: .orange),
        RewardBadge(title: "Premier succès", emoji: "🎉", color: .green),
        RewardBadge(title: "Premier défi relevé", emoji: "🥇", color: .yellow),
        RewardBadge(title: "Persévérant", emoji: "🐢", color: .gray),
        RewardBadge(title: "100% réussi", emoji: "💯", color: .cyan),
        RewardBadge(title: "Combattant", emoji: "⚔️", color: .mint),
        RewardBadge(title: "Curieux", emoji: "📚", color: .teal),
        RewardBadge(title: "Esprit en éveil", emoji: "🧠", color: .indigo),
        RewardBadge(title: "Journalier", emoji: "📝", color: .orange),
        RewardBadge(title: "Observateur", emoji: "🔍", color: .purple),
        RewardBadge(title: "Explorateur secret", emoji: "🕵️‍♂️", color: .gray),
        RewardBadge(title: "Premier pas", emoji: "🐥", color: .mint),
        RewardBadge(title: "Pauses bien méritées", emoji: "🧃", color: .cyan),
        RewardBadge(title: "Badge mystère", emoji: "🔒", color: .black.opacity(0.5)),
    ]
    
}



