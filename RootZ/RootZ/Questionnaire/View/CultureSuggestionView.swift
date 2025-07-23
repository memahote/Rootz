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
        VStack {
            Text("Voici d'autres cultures proches de toi :")
                .font(.title2)
                .padding()

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
                    .background(selectedCulture?.id == culture.id ? Color.blue.opacity(0.3) : Color.gray.opacity(0.2))
                    .cornerRadius(10)
                }
            }

            Spacer()

            NavigationLink(destination: ConfirmationView(viewModel: viewModel), isActive: $navigateToNext) {
                Button("Suivant") {
                    navigateToNext = true
                }
                .disabled(selectedCulture == nil)
                .padding()
                .background(selectedCulture == nil ? Color.gray : Color.green)
                .foregroundColor(.white)
                .cornerRadius(12)
            }
        }
        .padding()
    }
}
