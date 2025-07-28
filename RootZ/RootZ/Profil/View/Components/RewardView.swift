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
                    VStack(spacing: 4) {
                        ZStack {
                            // Bordure extérieure (plus foncée)
                            Image(systemName: "hexagon.fill")
                                .resizable()
                                .aspectRatio(1, contentMode: .fit)
                                .frame(width: 64, height: 64)
                                .foregroundColor(badge.color.darker())

                            // Intérieur coloré normal
                            Image(systemName: "hexagon.fill")
                                .resizable()
                                .aspectRatio(1, contentMode: .fit)
                                .frame(width: 58, height: 58)
                                .foregroundColor(badge.color)

                            Text(badge.emoji)
                                .font(.largeTitle)
                        }

                        Text(badge.title)
                            .font(.caption2)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                            .frame(maxWidth: 80) 
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
        .background(Color("BackgroundDefault"))
        .cornerRadius(10)
        .scrollIndicators(.hidden)
        .navigationTitle("")
        .sheet(isPresented: $showAllBadges) {
            AllBadgesView(badges: viewModel.badges)
        }
    }
}

extension Color {
    func darker(by amount: Double = 0.2) -> Color {
        return self.opacity(1.0 - amount)
    }
}
