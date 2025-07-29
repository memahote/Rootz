//
//  ComfirmationView.swift
//  RootZ
//
//  Created by Apprenant156 on 23/07/2025.
//
import SwiftUI

struct ConfirmationView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var navigateToLogin = false

    var body: some View {
        ZStack{
            Color(.backgroundDefault)
                .ignoresSafeArea()
            
            VStack {
                PreviousButton {
                    viewModel.previousStep()
                    
                }
                
                Text(" Tu as choisi la culture : ")
                    .font(
                        Font.custom("Baloo 2", size: 36)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 364, height: 119, alignment: .top)
                
                ZStack {
                   
                    
                    LottieView(name: "Confetti_Purple", loopMode: .playOnce)
                        .frame(width: 400, height: 350)
                        .allowsHitTesting(false)
                    
                    Image(viewModel.finalCultureImageName())
                        .resizable()
                        .frame(width: 240, height: 160)
                }
              
                Spacer()
                
                VStack{
                    Spacer()
                    BottomButtonsArea(
                        primaryButton: {
                            ContinueButton(title: "Continue") {
                                navigateToLogin = true
                            }
                        },
                        secondaryButton: {
                            EmptyView() // pas de second bouton
                        }
                    )
                }
                NavigationLink(destination: Loginview(), isActive: $navigateToLogin) {
                    EmptyView()
                }
                .navigationBarBackButtonHidden(true)
                
                
                .padding()
            }
        }
    }
}

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView(viewModel: OnboardingViewModel())
            .previewDevice("iPhone 15 Pro")
    }
}
