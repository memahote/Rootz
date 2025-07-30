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
    @State private var navigateToMascotteUnlocked = false
    @Binding var showOnboarding : Bool

    


    var body: some View {
       NavigationView {
           ZStack {
               Color(.backgroundDefault)
               .ignoresSafeArea()
               
               VStack {
                  
                   Text("Est-ce que cette culture te correspond ?")
                     .font(Font.custom("Baloo 2", size: 36).weight(.medium))
                     .multilineTextAlignment(.center)
                     .foregroundColor(.black)
                     .frame(maxWidth: .infinity)
                     .padding(.horizontal)
                     .padding(.top, 100)

                
                       ZStack{
                           LottieView(name: "Reward", loopMode: .playOnce)
                               .frame(width: 400, height: 350)
                               .allowsHitTesting(false)
                           Image(viewModel.detectedCultureImageName())
                               .resizable()
                               .scaledToFit()
                               .frame(width: 200, height: 120)
                          
                       }
                 
                       

                   
                    
                   Spacer()
                       HStack(spacing: 10) {
                           CancelButton(title:"Non") {
                               navigateToSuggestions = true
                           }
                           
                           NavigationLink(
                               destination: CultureSuggestionView(viewModel: viewModel),
                               isActive: $navigateToSuggestions
                           ) {
                               EmptyView()
                           }
                           .hidden()



                           ValidateButton(title:"Oui") {
                               navigateToMascotteUnlocked = true
                               
                           }
                          
                           NavigationLink(destination: MascotteUnlockedView(viewModel: viewModel, showOnboarding: $showOnboarding), isActive: $navigateToMascotteUnlocked) {
                               EmptyView()
                           }
                           .navigationBarBackButtonHidden(true)

                           
                       }
                   }
               }
            
            }
          
        }
           }
 

struct CulturalProfileResultView_Previews: PreviewProvider {
    static var previews: some View {
        CulturalProfileResultView(viewModel: OnboardingViewModel(), showOnboarding: .constant(true))
            .previewDevice("iPhone 15 Pro")
    }
}

