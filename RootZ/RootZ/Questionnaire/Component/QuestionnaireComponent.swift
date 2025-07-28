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


