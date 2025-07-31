//
//  HeaderView.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

import SwiftUI

struct HeaderViewRanking: View {
    var body: some View {
        VStack {
            Text("🏆 Division Argent 🏆")
                .font(.custom("Baloo2", size: 32))
            Text("⏱ 7 Jours")
                .font(.custom("Baloo2-Medium", size: 24))
        }
    }
}

#Preview {
    HeaderViewRanking()
}
