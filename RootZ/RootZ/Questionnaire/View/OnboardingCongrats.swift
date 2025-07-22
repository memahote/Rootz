//
//  OnboardingCongrats.swift
//  RootZ
//
//  Created by Apprenant156 on 21/07/2025.
//

import SwiftUI
import WebKit

struct OnboardingCongratsView: View {
    @ObservedObject var viewModel: OnboardingViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("Bravo 🎉")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Tu as complété ton profil culturel !")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            // GIF d'animation
            Image(.planete7Gif)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)


            Text("Clique sur Suivant pour découvrir ce que cache ton profil culturel…")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding()

            ContinueButton(title: "Suivant") {
                viewModel.currentStep = 8 // Assure-toi que case 7 = CulturalProfileResultView
            }
        }
        .padding()
    }
}

struct OnboardingCongratsView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCongratsView(viewModel: OnboardingViewModel())
            .previewDevice("iPhone 15 Pro")
    }
}
