//
//  QuestionnaireViewModel.swift
//  RootZ
//
//  Created by Apprenant156 on 17/07/2025.
//

import SwiftUI
import Foundation

class OnboardingViewModel: ObservableObject
{
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
    
    @Published var forcedCulture: CulturesModel? = nil



    
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
  

    func finalCultureImageName() -> String {
        return forcedCulture?.flag ?? detectedCultureImageName()
    }

    func detectedCultureImageName() -> String {
        let inputs = [
            birthCountry.normalized,
            parentOriginCountry?.normalized ?? "",
            selectedRegion?.normalized ?? "",
            culturalExplorationPreference?.normalized ?? "",
            familyLanguages.normalized
        ]

        var bestMatch: (culture: CulturesModel, score: Int)? = nil

        for culture in CultureData.allCultures {
            let countries = culture.associatedCountries.map { $0.normalized }
            let regions = culture.associatedRegions.map { $0.normalized }
            let keywords = culture.keywords.map { $0.normalized }

            var score = 0
            for input in inputs {
                if countries.contains(input) { score += 3 }
                if regions.contains(input) { score += 2 }
                if keywords.contains(input) { score += 1 }
            }

            if let currentBest = bestMatch {
                if score > currentBest.score {
                    bestMatch = (culture, score)
                }
            } else if score > 0 {
                bestMatch = (culture, score)
            }
        }

        // Si aucune correspondance, retourne la 1ère culture par défaut (par ex. Afrique du Nord)
        if let match = bestMatch {
            return match.culture.flag
        } else {
            return CultureData.allCultures.first?.flag ?? "drapeau_inconnu"
        }
    }


    
    func suggestedCultures(max: Int = 4) -> [CulturesModel] {
        let inputs = [
            birthCountry.normalized,
            parentOriginCountry?.normalized ?? "",
            selectedRegion?.normalized ?? "",
            culturalExplorationPreference?.normalized ?? "",
            familyLanguages.normalized
        ]

        var scoredCultures: [(culture: CulturesModel, score: Int)] = []

        for culture in CultureData.allCultures {
            let countries = culture.associatedCountries.map { $0.normalized }
            let regions = culture.associatedRegions.map { $0.normalized }
            let keywords = culture.keywords.map { $0.normalized }

            var score = 0
            for input in inputs {
                if countries.contains(input) { score += 3 }
                if regions.contains(input) { score += 2 }
                if keywords.contains(input) { score += 1 }
            }

            if score > 0 {
                scoredCultures.append((culture, score))
            }
        }

        let sorted = scoredCultures.sorted { $0.score > $1.score }
        return Array(sorted.map { $0.culture }.prefix(max))
    }
}


