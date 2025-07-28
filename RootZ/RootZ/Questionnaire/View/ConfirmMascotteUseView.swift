//
//  ConfirmMascotteUseView.swift
//  RootZ
//
//  Created by Apprenant156 on 28/07/2025.
//
import SwiftUI

struct ConfirmMascotteUseView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var showReassurance = false

    var body: some View {
            ZStack {
                    Color(.backgroundDefault)
                    .ignoresSafeArea()
                    
                    VStack(spacing: 20) {
                    Image(.planete2)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 180)

                    Text("Souhaites-tu l’utiliser à la place de ton compagnon actuel ?")
                        .multilineTextAlignment(.center)

                    HStack(spacing: 30) {
                        Button("Annuler") {
                            // Option : retour ou navigation personnalisée
                        }

                        Button("Valider") {
                            showReassurance = true
                        }
                    }
                    .buttonStyle(.borderedProminent)

                    NavigationLink(destination: CompanionFinalView(viewModel: viewModel), isActive: $showReassurance) {
                        EmptyView()
                    }
                }
                
            .padding()
        }
    }
}
struct ConfirmMascotteUseView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmMascotteUseView(viewModel: OnboardingViewModel())
            .previewDevice("iPhone 15 Pro")
    }
}
