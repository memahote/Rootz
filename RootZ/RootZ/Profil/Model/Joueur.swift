//
//  Joueur.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//
import Foundation

struct Joueur: Identifiable {
    let id = UUID()
    let rang: Int
    let nom: String
    let score: Int
}

struct User: Identifiable {
    let id = UUID()
    let nom: String
    let pseudo: String
    let mascotte: String // nom de l’image dans tes Assets
    let score: Int
}
