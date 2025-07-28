//
//  MascotteUnlockedView.swift
//  RootZ
//
//  Created by Apprenant156 on 28/07/2025.
//

import SwiftUI

struct MascotteUnlockedView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var navigateToMascotteAlert = false

    var body: some View {
        ZStack {
            Color(.backgroundDefault)
            .ignoresSafeArea()
            
            VStack(spacing: 20) {
                if let mascotteName = viewModel.selectedCulture()?.mascott {
                    Image(mascotteName) //image de la mascott en fonction de la culture choisi
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                } else {
                    // image de la planete si aucune mascotte
                    Image(.planete1)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                }

                Text("Bravo ! Tu as débloqué un nouveau compagnon pour ton avatar !")
                    .font(.custom("Baloo 2", size: 22))
                    .multilineTextAlignment(.center)
                    .padding()

                ContinueButton(title: "Continue") {
                    viewModel.nextStep()
                    navigateToMascotteAlert = true
                }

                NavigationLink(
                    destination: MascotteSwitchAlertView(viewModel: viewModel),
                    isActive: $navigateToMascotteAlert
                ) {
                    EmptyView()
                }
                .hidden()
            }
            .padding()
        }
       
    }
}

