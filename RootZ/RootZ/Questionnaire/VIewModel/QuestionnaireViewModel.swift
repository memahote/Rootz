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
    @Published var country: String = ""
    
    // Étape 1 - Naissance
    @Published var birthCity: String = ""
    @Published var birthCountry: String = ""

    // Étape 2 - Origines parentales
    @Published var parentOriginCountry: String?

    // Étape 3 - Culture familiale
    @Published var selectedCultureMatchLevel: String?

    // Étape 4 - Langues
    @Published var familyLanguages: String = ""

    // Étape 5 - Régions culturelles
    @Published var selectedRegion: String?
    @Published var selectedCountry: String?

    // Étape 6 - Préférences culturelles
    @Published var culturalExplorationPreference: String?



    
    var progress: Double {
        Double(currentStep - 1) / 5.0
    }

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
        let userInputs = [
            birthCountry.lowercased(),
            parentOriginCountry?.lowercased() ?? "",
            selectedRegion?.lowercased() ?? "",
            culturalExplorationPreference?.lowercased() ?? "",
            familyLanguages.lowercased()
        ]

        for culture in CultureData.allCultures {
            let matchCountry = culture.associatedCountries.contains(where: { userInputs.contains($0) })
            let matchRegion = culture.associatedRegions.contains(where: { userInputs.contains($0) })
            let matchKeyword = culture.keywords.contains(where: { userInputs.contains($0) })

            if matchCountry || matchRegion || matchKeyword {
                return culture.flag
            }
        }

        return "drapeau_inconnu"
    }
}

