//
//  QuestionnaireViewModel.swift
//  RootZ
//
//  Created by Apprenant156 on 17/07/2025.
//

import SwiftUI

class OnboardingViewModel: ObservableObject {
    @Published var currentStep: Int = 1
    @Published var city: String = ""
    @Published var country: String = "" // Lieu de naissance
    @Published var parentOriginCountry: String? = nil // Origine des parents
    @Published var selectedRegion: String? = nil // Région choisie (Afrique, Asie, etc.)
    @Published var selectedCultureMatchLevel: String? = nil // (Question 3)
    @Published var selectedLanguages: [String] = [] // Langues parlées
    @Published var culturalExplorationPreference: String? = nil // (Plutôt mes racines, etc.)

    
    var progress: Double {
        Double(currentStep - 1) / 5.0
    }

    @Published var selectedCountry: String? = nil

    func nextStep() {
        if currentStep < 8 {
            currentStep += 1
        }
    }

    func previousStep() {
        if currentStep > 1 {
            currentStep -= 1
        }
    }
    
    func skipToStep5() {
        currentStep = 5
    }
    
}

extension OnboardingViewModel {
    func detectedCultureImageName() -> String {
        // Priorité aux régions sélectionnées 
        if let region = selectedRegion?.lowercased() {
            switch region {
            case "afrique":
                return "drapeau_afrique"
            case "asie":
                return "drapeau_asie"
            case "europe":
                return "drapeau_europe"
            case "amerique":
                return "drapeau_amerique"
            default:
                break
            }
        }

        // Sinon, on regarde les pays entrés
        let allCountries = [country, parentOriginCountry].compactMap { $0?.lowercased() }

        for country in allCountries {
            if country.contains("maroc") || country.contains("algérie") || country.contains("tunisie") {
                return "drapeau_maghreb"
            } else if country.contains("france") {
                return "drapeau_france"
            } else if country.contains("chine") {
                return "drapeau_chine"
            } else if country.contains("brésil") {
                return "drapeau_bresil"
            } else if country.contains("inde") {
                return "drapeau_inde"
            }
            
        }

        // Fallback (si rien trouvé)
        return "drapeau_inconnu"
    }
}
