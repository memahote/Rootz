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
    @Binding var showOnboarding : Bool

    var body: some View {
        ZStack {
            Color(.backgroundDefault)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                ZStack {
                   
                    // Mascotte affichée selon la culture
                    if let mascotteName = viewModel.selectedCulture()?.mascott {
                        Image(mascotteName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 300)
                    } else {
                        Image(.planete1)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }
                    
                    LottieView(name: "TapBurst", loopMode: .playOnce)
                        .frame(width: 400, height: 350)
                        .allowsHitTesting(false)
                }
              

                Text("Bravo ! Tu as débloqué un nouveau compagnon pour ton avatar !")
                    .font(.custom("Baloo 2", size: 22))
                    .multilineTextAlignment(.center)
                    .padding()

                Spacer()

                ContinueButton(title: "Continue") {
                    navigateToMascotteAlert = true
                }

                NavigationLink(
                    destination: MascotteSwitchAlertView(viewModel: viewModel, showOnboarding: $showOnboarding),
                    isActive: $navigateToMascotteAlert
                ) {
                    EmptyView()
                }
                .navigationBarBackButtonHidden(true)
            }
            .padding()
        }
    }
}


struct MascotteUnlockedView_Previews: PreviewProvider {
    static var previews: some View {
        MascotteUnlockedView(viewModel: OnboardingViewModel(), showOnboarding: .constant(true))
            .previewDevice("iPhone 15 Pro")
    }
}

