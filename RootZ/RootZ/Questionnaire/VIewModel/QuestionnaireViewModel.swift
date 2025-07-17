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
    
    var progress: Double {
        Double(currentStep - 1) / 7 // ou adapte selon le nombre total d'étapes
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
}

