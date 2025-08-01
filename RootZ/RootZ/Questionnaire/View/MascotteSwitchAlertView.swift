//
//  MascotteSwitchAlertView.swift
//  RootZ
//
//  Created by Apprenant156 on 28/07/2025.
//

import SwiftUI

struct MascotteSwitchAlertView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var navigateToMascotteReady = false
    @Binding var showOnboarding : Bool

    var body: some View {
        ZStack {
            Color(.backgroundDefault)
                .ignoresSafeArea()
          
            VStack(spacing: 20) {
                Spacer()
                // Image de la planète qui pleure
                Image(.planete2)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)

                Text("Souhaites-tu l’utiliser à la place de ton compagnon actuel ?")
                    .font(.custom("Baloo 2", size: 22))
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                HStack(spacing: 30) {
                    CancelButton(title:"Annuler") {
                        // Navigation vers CompanionFinalView directement si refus
                        navigateToMascotteReady = true
                    }
                    .foregroundColor(.red)

                    ValidateButton(title:"Valider") {
                        navigateToMascotteReady = true
                    }
                    .foregroundColor(.green)
                }

                NavigationLink(
                    destination: CompanionFinalView(viewModel: viewModel, showOnboarding : $showOnboarding),
                    isActive: $navigateToMascotteReady
                ) {
                    EmptyView()
                }
                .navigationBarBackButtonHidden(true)
            }
            .padding()
        }
        
    }
}

struct MascotteSwitchAlertView_Previews: PreviewProvider {
    static var previews: some View {
        MascotteSwitchAlertView(viewModel: OnboardingViewModel(), showOnboarding: .constant(true))
            .previewDevice("iPhone 15 Pro")
    }
}
