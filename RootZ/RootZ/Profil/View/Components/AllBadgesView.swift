//
//  AllBadgesView.swift
//  RootZ
//
//  Created by Mounir on 22/07/2025.
// Vue des badges dans la modal

import SwiftUI

struct AllBadgesView: View {
    let badges: [RewardBadge]

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 12) {
                    ForEach(badges) { badge in
                        VStack(spacing: 4) {
                            ZStack {
                                // Bordure extérieure (plus foncée)
                                Image(systemName: "hexagon.fill")
                                    .resizable()
                                    .aspectRatio(1, contentMode: .fit)
                                    .frame(width: 64, height: 64)
                                    .foregroundColor(badge.color.darker())

                                //  Intérieur coloré normal
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
                                .frame(maxWidth: 58)
                                .frame(height: 32) 
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Tous les Badges")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
