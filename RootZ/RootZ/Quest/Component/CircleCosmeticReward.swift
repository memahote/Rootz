//
//  CircleCosmeticReward.swift
//  RootZ
//
//  Created by YacineBahaka  on 20/07/2025.
//

import SwiftUI

struct CircleCosmeticReward: View {
    var body: some View {
        Circle()
            .fill(Color.fondAfrique)
            .frame(width: 120, height: 120)
            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            .padding(.trailing, 10)
    }
}

#Preview {
    CircleCosmeticReward()
}
