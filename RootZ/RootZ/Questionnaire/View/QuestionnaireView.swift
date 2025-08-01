//
//  QuestionnaireView.swift
//  RootZ
//
//  Created by Apprenant156 on 17/07/2025.
//

import SwiftUI

struct OnboardingStepView: View {
    @ObservedObject var viewModel: OnboardingViewModel

    var body: some View {
        ZStack {
            Color(.backgroundDefault)
                .ignoresSafeArea()

            VStack {
                Spacer()

                Image(.planete1)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)

                Text("Où es-tu né·e ?")
                    .font(Font.custom("Baloo 2", size: 30).weight(.medium))
                    .fontWeight(.semibold)
                    .padding(.top)

                TextField("ville", text: $viewModel.city)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 268, height: 42)
                    .padding(.top, 10)

                TextField("pays", text: $viewModel.country)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 268, height: 42)
                    .padding(.vertical, 10)

                Spacer(minLength: 80) // pousse le contenu vers le haut
            }

            VStack {
                Spacer()
                BottomButtonsArea(
                    primaryButton: {
                        ContinueButton(title: "Continue") {
                            viewModel.birthCity = viewModel.city
                            viewModel.birthCountry = viewModel.country
                            viewModel.nextStep()
                        }
                    },
                    secondaryButton: {
                        EmptyView() // pas de second bouton
                    }
                )
                .padding(.bottom, 20)
            }
        }
    }
}


struct OnboardingStepView2: View {
    @ObservedObject var viewModel: OnboardingViewModel

    var body: some View {
        ZStack {
            Color(.backgroundDefault)
                .ignoresSafeArea()
           
            VStack {
                PreviousButton {
                    viewModel.previousStep()
                }
                
                Text("D’où viennent tes parents ou grands-parents ?")
                    .font(Font.custom("Baloo 2", size: 30).weight(.medium))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.horizontal)

                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 224, height: 220)
                    .background(
                        Image(.planete3)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 235, height: 220)
                            .clipped()
                    )

                TextField("pays ou régions", text: Binding(
                    get: { viewModel.parentOriginCountry ?? "" },
                    set: { viewModel.parentOriginCountry = $0 }
                ))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 268, height: 42)
                .padding(.vertical, 20)

                Spacer(minLength: 80)
            }

            VStack {
                Spacer()
                BottomButtonsArea(
                    primaryButton: {
                        ContinueButton(title: "Continue") {
                            viewModel.nextStep()
                        }
                    },
                    secondaryButton: {
                        Button(action: {
                            viewModel.skipToStep5()
                        }) {
                            Text("Je ne sais pas")
                                .font(Font.custom("SF Pro Text", size: 17).weight(.semibold))
                                .foregroundColor(Color(red: 0.41, green: 0.09, blue: 0))
                        }
                    }
                )
                .padding(.bottom, 20)
            }
        }
    }
}


struct OnboardingStepView3: View {
    
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var selectedOption: String? = nil
    
    var body: some View {
    
        VStack {
            PreviousButton() {
                viewModel.previousStep()
            }
            Spacer()
            
            Text("As-tu grandi dans la même culture que celle de ta famille ?")
                .font(
                    Font.custom("Baloo 2", size: 32)
                        .weight(.medium)
                )
                .frame(width: 310, height: 273, alignment: .top)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)

            
            OnBoardingButton(title: "Oui, totalement", isSelected: selectedOption == "Oui, totalement") {
                selectedOption = "Oui, totalement"
            }
            OnBoardingButton(title: "Un peu", isSelected: selectedOption == "Un peu") {
                selectedOption = "Un peu"
            }
            OnBoardingButton(title: "Pas vraiment", isSelected: selectedOption == "Pas vraiment") {
                selectedOption = "Pas vraiment"
            }
            OnBoardingButton(title: "Pas du tout", isSelected: selectedOption == "Pas du tout") {
                selectedOption = "Pas du tout"
            }
            Spacer(minLength: 80)
        }
            
        VStack{
            Spacer()
            BottomButtonsArea(
                primaryButton: {
                    ContinueButton(title: "Continue") {
                        viewModel.selectedCultureMatchLevel = selectedOption
                        viewModel.nextStep()
                    }
                },
                secondaryButton: {
                    EmptyView() // pas de second bouton
                }
            )
            
            .padding(.bottom, 20)
        }
    }
}
    
struct OnboardingStepView4: View {
        @ObservedObject var viewModel: OnboardingViewModel

        
        var body: some View {
            
            VStack {
                PreviousButton() {
                    viewModel.previousStep()
                }
                Spacer()
                Text("Quelles langues parle-t-on (ou parlait-on) dans ta famille ?")
                  .font(
                    Font.custom("Baloo 2", size: 32)
                      .weight(.medium)
                  )
                  .frame(width: 310, height: 273, alignment: .top)
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
            
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 224, height: 220)
                  .background(
                    Image(.planete4)
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width: 290, height: 230)
                      .clipped()
                  )
                TextField(
                    "Langues maternelles, régionales ou transmises par l'apprentissage",
                    text: $viewModel.familyLanguages
                )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .padding(.vertical, 20)
                .frame(width: 268, height: 42)

            }
                
            VStack{
                Spacer()
                BottomButtonsArea(
                    primaryButton: {
                        ContinueButton(title: "Continue") {
                            viewModel.nextStep()
                        }
                    },
                    secondaryButton: {
                        EmptyView() // pas de second bouton
                    }
                )
                .padding(.bottom, 20)
            }
        }
    }


struct OnboardingStepView5: View {
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var selectedRegion: Region = allRegions[0]
    @State private var selectedCountry: String? = nil

    var body: some View {
        ZStack {
            Color(.backgroundDefault)
                .ignoresSafeArea()
            
            VStack {
                PreviousButton {
                    viewModel.previousStep()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)

                Spacer(minLength: 10)

                Text("Dans quelles régions ou pays ta culture familiale puise-t-elle ses racines ?")
                    .font(Font.custom("Baloo 2", size: 30).weight(.medium))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .foregroundColor(.black)

                // Carrousel de régions
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(allRegions) { region in
                            Button(action: {
                                selectedRegion = region
                                selectedCountry = nil
                            }) {
                                Text(region.name)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 16)
                                    .background(
                                        selectedRegion.id == region.id
                                        ? Color.buttonDefault.opacity(0.8)
                                            : Color.gray.opacity(0.2)
                                    )
                                    .foregroundColor(.white)
                                    .cornerRadius(12)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)

                // Liste scrollable des pays — sans frame bloquante
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(spacing: 12) {
                        ForEach(selectedRegion.countries, id: \.self) { country in
                            OnBoardingButton(title: country, isSelected: selectedCountry == country) {
                                selectedCountry = country
                            }
                        }
                    }
                    .padding(.horizontal)
                }

                Spacer(minLength: 100) // Pour laisser de l’espace au bouton
            }

            // BOUTONS EN BAS FIXÉS
            VStack {
                Spacer()
                BottomButtonsArea(
                    primaryButton: {
                        ContinueButton(title: "Continue") {
                            viewModel.selectedCountry = selectedCountry
                            viewModel.nextStep()
                        }
                    },
                    secondaryButton: {
                        EmptyView()
                    }
                )
                .padding(.bottom, 20)
            }
        }
    }
}


struct OnboardingStepView6: View {
    
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var selectedOption: String? = nil
    
    var body: some View {
    
        VStack {
            PreviousButton() {
                viewModel.previousStep()
            }
            Spacer()
            
            Text("As-tu envie de découvrir des cultures proches de toi ou totalement différentes ?")
              .font(
                Font.custom("Baloo 2", size: 32)
                  .weight(.medium)
              )
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
              .frame(width: 310, height: 273, alignment: .top)
            
            Spacer()
            
            OnBoardingButton(title: "Plutôt mes racines", isSelected: selectedOption == "Plutôt mes racines") {
                selectedOption = "Plutôt mes racines"
            }
            OnBoardingButton(title: "Un peu des deux", isSelected: selectedOption == "Un peu des deux") {
                selectedOption = "Un peu des deux"
            }
            OnBoardingButton(title: "Autres cultures", isSelected: selectedOption == "Autres cultures") {
                selectedOption = "Autres cultures"
            }
          
        }
        VStack {
            Spacer()
            BottomButtonsArea(
                primaryButton: {
                    ContinueButton(title: "Continue") {
                        viewModel.culturalExplorationPreference = selectedOption
                        viewModel.nextStep()
                    }
                },
                secondaryButton: {
                    EmptyView() // pas de second bouton
                }
            )
            .padding(.bottom, 20)
        }
            
          
      
    }
}



//struct OnboardingStepView6_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingStepView6(viewModel: OnboardingViewModel())
//            .previewDevice("iPhone 15 Pro")
//    }
//}


