//
//  CultureSuggestionView.swift
//  RootZ
//
//  Created by Apprenant156 on 23/07/2025.
//
import SwiftUI
struct CultureSuggestionView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var selectedCulture: CulturesModel? = nil
    @State private var navigateToNext = false

    var body: some View {
        ZStack {
            Color(.backgroundDefault)
                .ignoresSafeArea()
            
        VStack {
            PreviousButton {
                viewModel.previousStep()
            }
                Text("Voici d'autres cultures proches de toi :")
                    .font(.custom("Baloo 2", size: 36).weight(.medium))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.horizontal)

                ForEach(viewModel.suggestedCultures(), id: \.id) { culture in
                    Button(action: {
                        selectedCulture = culture
                        viewModel.forcedCulture = culture
                    }) {
                        HStack {
                            Image(culture.flag)
                                .resizable()
                                .frame(width: 50, height: 30)
                            Text(culture.name)
                                .fontWeight(.medium)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(selectedCulture?.id == culture.id ? Color.buttonValidate.opacity(0.3) : Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    }
                }

                Spacer()

                NavigationLink(destination: ConfirmationView(viewModel: viewModel), isActive: $navigateToNext) {
                    EmptyView()
                }
                .navigationBarBackButtonHidden(true)

                ContinueButton(title: "Suivant") {
                    if selectedCulture != nil {
                        navigateToNext = true
                    }
                }
                .opacity(selectedCulture == nil ? 0.5 : 1.0)
                .disabled(selectedCulture == nil)
                .padding(.bottom, 20)
            }
            .padding()
        }
    }
}

struct CultureSuggestionView_Previews: PreviewProvider {
    static var previews: some View {
        CultureSuggestionView(viewModel: OnboardingViewModel())
            .previewDevice("iPhone 15 Pro")
    }
}
