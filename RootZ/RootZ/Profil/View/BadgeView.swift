//
//  BadgeView.swift
//  RootZ
//
//  Created by Mounir on 20/07/2025.
//
// BADGE DE STREAK 
import SwiftUI

struct BadgeView: View {
    let emoji: String
    let value: String
    let label: String

    var body: some View {
        VStack {
            HStack {
                Text(emoji)
                    .font(.none)
                Text(value)
                    .font(.none)
            }

            Text(label)
                .font(.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .minimumScaleFactor(0.8)
        }
        .frame(minWidth: 140, maxWidth: .infinity, minHeight: 80)
        .background(Color("CouleurAccent").opacity(0.1))
        .cornerRadius(20)
    }
}
