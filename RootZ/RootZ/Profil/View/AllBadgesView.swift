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
            }
            .navigationTitle("Tous les Badges")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
