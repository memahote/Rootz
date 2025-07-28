//
//  MascotteReadyView.swift
//  RootZ
//
//  Created by Apprenant156 on 28/07/2025.
//
import SwiftUI

struct MascotteReadyView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var navigateToFinalCompanion = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Tu pourras toujours revenir en arrière si tu changes d’avis plus tard !")
                .multilineTextAlignment(.center)
                .padding()
            
            ContinueButton(title: "Continue") {
                viewModel.nextStep()
                navigateToFinalCompanion = true
            }

            NavigationLink(destination: CompanionFinalView(viewModel: viewModel), isActive: $navigateToFinalCompanion) {
                EmptyView()
            }
        }
    }
}
