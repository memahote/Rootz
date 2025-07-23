//
//  ComfirmationView.swift
//  RootZ
//
//  Created by Apprenant156 on 23/07/2025.
//
import SwiftUI

struct ConfirmationView: View {
    @ObservedObject var viewModel: OnboardingViewModel

    var body: some View {
        VStack {
            Text("Tu as choisi la culture :")
                .font(.title2)
            Image(viewModel.finalCultureImageName())
                .resizable()
                .frame(width: 120, height: 80)

            Button("Terminer") {
                viewModel.nextStep()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
        .padding()
    }
}
