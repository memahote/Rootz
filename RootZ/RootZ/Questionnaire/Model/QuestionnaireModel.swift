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

struct ContinueButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.buttonDefault)
                .cornerRadius(12)
        }
        .padding(.horizontal)
        .padding(.vertical, 20)
    }
}

struct PreviousButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.left")
                .foregroundColor(.brown)
                .font(.title2)
        }
        .padding(.leading)
        .padding(.top)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct OnBoardingButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.black)
                .frame(width: 268, height: 42)
                .background(
                    isSelected
                    ? (Color.buttonValidate)
                    : Color.white // par défaut
                )
                .cornerRadius(13)
                .overlay(
                    RoundedRectangle(cornerRadius: 13)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
        }
    }
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


