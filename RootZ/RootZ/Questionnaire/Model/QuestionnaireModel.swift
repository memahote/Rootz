//
//  QuestionnaireModel.swift
//  RootZ
//
//  Created by Apprenant156 on 17/07/2025.
//

import SwiftUI

struct Step {
    let id: Int
    let title: String
}


// Modèle de région et pays
struct Region: Identifiable {
    let id = UUID()
    let name: String
    let countries: [String]
}

let allRegions: [Region] = [
    Region(name: "Afrique", countries: [
        "Afrique du Nord", "Afrique de l'Ouest", "Afrique centrale", "Afrique australe", "Océan Indien"
    ]),
    Region(name: "Europe", countries: [
        "Europe de l'Ouest", "Europe de l'Est", "Europe du Nord", "Europe du Sud", "France", "Allemagne", "Espagne", "Italie"
    ]),
    Region(name: "Asie", countries: [
        "Asie du Sud", "Asie de l'Est", "Asie du Sud-Est", "Moyen-Orient", "Inde", "Chine", "Japon", "Corée"
    ]),
    Region(name: "Amérique", countries: [
        "Amérique du Nord", "Amérique Centrale", "Amérique du Sud", "Caraïbes", "États-Unis", "Canada", "Brésil", "Argentine"
    ])
]


