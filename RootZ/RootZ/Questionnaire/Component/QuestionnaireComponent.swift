//
//  QuestionnaireComponent.swift
//  RootZ
//
//  Created by Apprenant156 on 18/07/2025.
//
import SwiftUI

//Bouton Continuer
struct ContinueButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Button(action: action) {
                Text(title)
                    .font(.custom("QuickSand-VariableFont_wght", size: 24))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 14)
        .frame(width: 345, alignment: .center)
        .background(.buttonDefault)
        .cornerRadius(10)
    }
}


//Bouton Retour
struct PreviousButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.left")
                .foregroundColor(.buttonDefault)
                .font(.title2)
        }
        .padding(.leading)
        .padding(.top)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

//Bouton activer
struct OnBoardingButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.black)
                .frame(width: 268, height: 42)
                .background(
                    isSelected
                    ? (Color.buttonValidate)
                    : Color.white // par défaut
                )
                .cornerRadius(13)
                .overlay(
                    RoundedRectangle(cornerRadius: 13)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
        }
    }
}


struct BottomButtonsArea<Primary: View, Secondary: View>: View {
    let primaryButton: Primary
    let secondaryButton: Secondary?

    init(
        @ViewBuilder primaryButton: () -> Primary,
        @ViewBuilder secondaryButton: () -> Secondary? = { nil }
    ) {
        self.primaryButton = primaryButton()
        self.secondaryButton = secondaryButton()
    }

    var body: some View {
        VStack(spacing: 8) {
            primaryButton

            if let secondary = secondaryButton {
                secondary
            }
        }
        .padding(.bottom, 20)
    }
}

//bouton valider
struct ValidateButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(alignment: .center, spacing: 10) {
                Text(title)
                    .font(.custom("Baloo 2", size: 20))
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 7)
            .frame(width: 150, height: 52, alignment: .center)
            .background(Color(red: 0.19, green: 0.68, blue: 0.35))
            .cornerRadius(10)
        }
    }
}

//bouton annuler
struct CancelButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(alignment: .center, spacing: 10) {
                Text(title)
                    .font(.custom("Baloo 2", size: 20))
                    .foregroundColor(.red)
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 7)
            .frame(width: 150, height: 52, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .inset(by: -0.5)
                    .stroke(Color.red, lineWidth: 1)
            )
        }
    }
}

