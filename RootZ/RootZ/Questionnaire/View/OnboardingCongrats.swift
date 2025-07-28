//
//  OnboardingCongrats.swift
//  RootZ
//
//  Created by Apprenant156 on 21/07/2025.
//

import SwiftUI
import WebKit
import SwiftUI

struct OnboardingCongratsView: View {
    @ObservedObject var viewModel: OnboardingViewModel

    var body: some View {
        VStack {
            Spacer(minLength: 40)

            // ✅ Titre sans frame fixe
            Text("Bravo !\n Tu as complété ton profil.")
                .font(.custom("Baloo 2", size: 30).weight(.medium))
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .padding(.horizontal)
            
            // ✅ Animations centrées dans un bloc
            ZStack {
                LottieView(name: "PlaneteWin", loopMode: .playOnce)
                    .frame(width: 300, height: 300)
                    .allowsHitTesting(false)

                LottieView(name: "Confetti", loopMode: .playOnce)
                    .frame(width: 400, height: 350)
                    .allowsHitTesting(false)
            }

            // ✅ Texte explicatif collé aux animations
            Text("Clique sur Suivant pour découvrir ce que cache ton profil culturel…")
                .font(.custom("Nunito", size: 24).weight(.light))
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.top, 10)

            Spacer()

            // ✅ Bouton en bas
            BottomButtonsArea(
                primaryButton: {
                    ContinueButton(title: "Suivant") {
                        viewModel.currentStep = 8
                    }
                },
                secondaryButton: {
                    EmptyView()
                }
            )
            .padding(.bottom, 20)
        }
        .padding()
        .background(Color(.backgroundDefault))
        .ignoresSafeArea()
    }
}


struct OnboardingCongratsView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCongratsView(viewModel: OnboardingViewModel())
            .previewDevice("iPhone 15 Pro")
    }
}
