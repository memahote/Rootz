//
//  RewardView.swift
//  RootZ
//
//  Created by Mounir on 20/07/2025.
// Grille des badges 

import SwiftUI

struct RewardView: View {
    @StateObject private var viewModel = RewardViewModel()
    @State private var showAllBadges = false

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 6) {
                ForEach(viewModel.badges.prefix(8)) { badge in
                    VStack {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(badge.color)
                            .frame(width: 61, height: 58)
                            .overlay(
                                Text(badge.emoji)
                                    .font(.largeTitle)
                            )
                        Text(badge.title)
                            .font(.caption)
                            .multilineTextAlignment(.center)
                    }
                }
            }
            .padding()

            Text("Voir tous les badges")
                .font(.headline)
                .foregroundColor(.blue)
                .underline()
                .padding(.top, 8)
                .onTapGesture {
                    showAllBadges = true
                }
        }
        .navigationTitle("Mes Badges")
        .sheet(isPresented: $showAllBadges) {
            AllBadgesView(badges: viewModel.badges)
        }
    }
}
