//
//  CompanionFinalView.swift
//  RootZ
//
//  Created by Apprenant156 on 28/07/2025.
//
import SwiftUI

import SwiftUI

struct CompanionFinalView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var navigateToLogin = false

    var body: some View {
        ZStack {
            Color(.backgroundDefault)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                if let mascotteImage = viewModel.finalCulture()?.mascott {
                    Image(mascotteImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 220)
                        .padding()
                } else {
                    // Image par défaut si aucune mascotte trouvée
                    Image("mascotte_defaut")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 220)
                        .padding()
                }

                Text("Il est prêt à t’accompagner dans ton aventure culturelle et à te faire découvrir de nouveaux trésors du monde.")
                    .font(.custom("Baloo 2", size: 22))
                    .multilineTextAlignment(.center)
                    .padding()

                NavigationLink(destination: Loginview(), isActive: $navigateToLogin) {
                    EmptyView()
                }
                .hidden()
            }
            
            VStack{
                Spacer()
                BottomButtonsArea(
                    primaryButton: {
                        ContinueButton(title: "Continue") {
                            viewModel.hasCompletedOnboarding = true
                            navigateToLogin = true
                        }
                    },
                    secondaryButton: {
                        EmptyView() // pas de second bouton
                    }
                )
            }
          
            .padding()
        }
      
    }
}
struct CompanionFinalView_Previews: PreviewProvider {
    static var previews: some View {
        CompanionFinalView(viewModel: OnboardingViewModel())
            .previewDevice("iPhone 15 Pro")
    }
}
