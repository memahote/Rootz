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
        VStack {
        Spacer()
            
            Image(.planete1)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            Text("Où es-tu né(e) ?")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top)
            
            TextField("ville", text: $viewModel.city)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("pays", text: $viewModel.country)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .padding(.bottom)
                .padding(.vertical, 20)
            
            Spacer()
            ContinueButton(title: "Continue") {
                viewModel.nextStep()
            }
            .padding(.bottom)
          
        }
    }
}

struct OnboardingStepView2: View {
    @ObservedObject var viewModel: OnboardingViewModel
    
    var body: some View {
        
        VStack {
            PreviousButton() {
                viewModel.previousStep()
            }
            Spacer()
            
            Text("D’où viennent tes parents ou grands-parents ?")
              .font(
                Font.custom("Baloo 2", size: 36)
                  .weight(.medium)
              )
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
              .frame(width: 358, height: 159, alignment: .top)
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 224, height: 220)
              .background(
                Image(.planete3)
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: 224, height: 220)
                  .clipped()
              )
            TextField("pays ou régions", text: $viewModel.country)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .padding(.vertical, 20)
            
            Spacer()
            
            ContinueButton(title: "Continue") {
                viewModel.nextStep()
            }

            Text("Je ne sais pas")
              .font(
                Font.custom("SF Pro Text", size: 17)
                  .weight(.semibold)
              )
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.41, green: 0.09, blue: 0))
        
            
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
                    Font.custom("Baloo 2", size: 36)
                        .weight(.medium)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .frame(width: 336, height: 148, alignment: .top)
            
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
            Spacer()
            ContinueButton(title: "Continue") {
                viewModel.nextStep()
            }
            .padding(.bottom)
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
                    Font.custom("Baloo 2", size: 36)
                      .weight(.medium)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                  .frame(width: 358, height: 159, alignment: .top)
                
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
                TextField("Langues maternelles, régionales ou transmises par l'apprentissage", text: $viewModel.country)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .padding(.vertical, 20)
                
                Spacer()
                
                ContinueButton(title: "Continue") {
                    viewModel.nextStep()
                }

                Text("Je ne sais pas")
                  .font(
                    Font.custom("SF Pro Text", size: 17)
                      .weight(.semibold)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.41, green: 0.09, blue: 0))
            
                
            }
        }
    }

struct OnboardingStepView5: View {
    
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var selectedOption: String? = nil
    
    var body: some View {
    ZStack {
        Image(.planete5)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 340, height: 419)
            .clipped()
            .offset(x: 150, y: 30) // pousse un peu vers l’extérieur
            .zIndex(0)
            
        VStack {
            PreviousButton() {
                viewModel.previousStep()
            }
            Spacer()
            
            Text("Connais-tu des contes, légendes ou histoires liées à ta région ou ta famille ?")
              .font(
                Font.custom("Baloo 2", size: 36)
                  .weight(.medium)
              )
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
           Spacer()
            
            OnBoardingButton(title: "Oui, totalement", isSelected: selectedOption == "Oui, totalement") {
                selectedOption = "Oui, totalement"
            }
            OnBoardingButton(title: "Un peu", isSelected: selectedOption == "Un peu") {
                selectedOption = "Un peu"
            }
            OnBoardingButton(title: "Pas vraiment", isSelected: selectedOption == "Pas vraiment") {
                selectedOption = "Pas vraiment"
            }

            Spacer()
            ContinueButton(title: "Continue") {
                viewModel.nextStep()
                }
            .padding(.bottom)
            }
        }
    }
}
struct OnboardingStepView6: View {
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var selectedRegion: Region = allRegions[0]
    @State private var selectedCountry: String? = nil

    var body: some View {
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
                                        ? Color.brown.opacity(0.8)
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

            // Liste scrollable des pays (max 5 visibles)
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
            .frame(height: 5 * 52)

            Spacer()

            ContinueButton(title: "Continue") {
                viewModel.selectedCountry = selectedCountry
                viewModel.nextStep()
            }
            .padding(.bottom)
        }
    }
}

struct OnboardingStepView7: View {
    
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
                    Font.custom("Baloo 2", size: 36)
                        .weight(.medium)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
            
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
        
            Spacer()
            ContinueButton(title: "Continue") {
                viewModel.nextStep()
            }
        }
    }
}

struct OnboardingStepView8: View {
    
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var selectedOption: String? = nil
    
    var body: some View {
    
        VStack {
            PreviousButton() {
                viewModel.previousStep()
            }
            Spacer()
            
            Text("Pourquoi utilises-tu cette application ?")
                .font(
                    Font.custom("Baloo 2", size: 36)
                        .weight(.medium)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .frame(width: 336, height: 148, alignment: .top)
            
            OnBoardingButton(title: "Pour mieux connaître mes origines", isSelected: selectedOption == "Pour mieux connaître mes origines") {
                selectedOption = "Pour mieux connaître mes origines"
            }
            OnBoardingButton(title: "Pour apprendre des choses nouvelles", isSelected: selectedOption == "Pour apprendre des choses nouvelles") {
                selectedOption = "Pour apprendre des choses nouvelles"
            }
            OnBoardingButton(title: "Pour transmettre ma culture", isSelected: selectedOption == "Pour transmettre ma culture") {
                selectedOption = "Pour transmettre ma culture"
            }
            OnBoardingButton(title: "Pour jouer et m’amuser", isSelected: selectedOption == "Pour jouer et m’amuser") {
                selectedOption = "Pour jouer et m’amuser"
            }
            Spacer()
            ContinueButton(title: "Continue") {
                viewModel.nextStep()
            }
            .padding(.bottom)
        }
    }
}

struct OnboardingStepView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStepView(viewModel: OnboardingViewModel())
            .previewDevice("iPhone 15 Pro")
    }
}


