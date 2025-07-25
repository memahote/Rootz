//
//  CulturalProfileResultView.swift
//  RootZ
//
//  Created by Apprenant156 on 21/07/2025.
//

import SwiftUI

struct CulturalProfileResultView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var hasOpenedChest = false
    @State private var navigateToSuggestions = false


    var body: some View {
       NavigationView {
           VStack {
              
                   ZStack{
                       LottieView(name: "Reward", loopMode: .playOnce)
                           .frame(width: 400, height: 350)
                           .allowsHitTesting(false)
                       Image(viewModel.detectedCultureImageName())
                           .resizable()
                           .scaledToFit()
                           .frame(width: 200, height: 120)
                      
                   }
                   

                   Text("Est-ce que cette culture te correspond ?")
                       .font(
                       Font.custom("Baloo 2", size: 25)
                       .weight(.medium)
                       )                   .multilineTextAlignment(.center)
                       .padding()

                   HStack(spacing: 30) {
                       Button("Non") {
                           navigateToSuggestions = true
                       }
                       .padding()
                       .background(Color.red.opacity(0.7))
                       .foregroundColor(.white)
                       .cornerRadius(12)
                       NavigationLink(
                           destination: CultureSuggestionView(viewModel: viewModel),
                           isActive: $navigateToSuggestions
                       ) {
                           EmptyView()
                       }
                       .hidden()



                       Button("Oui") {
                           
                       }
                       .padding()
                       .background(Color.green.opacity(0.7))
                       .foregroundColor(.white)
                       .cornerRadius(12)
                       
                   }
               }
           }
           .padding()
        }
      
    }

struct CulturalProfileResultView_Previews: PreviewProvider {
    static var previews: some View {
        CulturalProfileResultView(viewModel: OnboardingViewModel())
            .previewDevice("iPhone 15 Pro")
    }
}

