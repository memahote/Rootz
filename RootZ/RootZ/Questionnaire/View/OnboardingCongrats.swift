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
            Text("Bravo !")
              .font(
                Font.custom("Baloo 2", size: 36)
                  .weight(.medium)
              )
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
              .frame(width: 350, height: 42, alignment: .top)

            Text("Tu as complété ton profil culturel !")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            // GIF d'animation
            ZStack {
                          Image(.planete7Gif)
                              .resizable()
                              .scaledToFit()
                              .frame(width: 400, height: 250)
                          
                          // Animation de confetti au-dessus
                          LottieView(name: "Confetti", loopMode: .playOnce)
                              .frame(width: 400, height: 350)
                              .allowsHitTesting(false) // Évite d'intercepter les interactions
                      }

            Text("Clique sur Suivant pour découvrir ce que cache ton profil culturel…")
              .font(
                Font.custom("Nunito", size: 25)
                  .weight(.light)
              )
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
            

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
