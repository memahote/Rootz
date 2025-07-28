//
//  CircleCosmeticReward.swift
//  RootZ
//
//  Created by YacineBahaka  on 20/07/2025.
//

import SwiftUI

struct CircleCosmeticReward: View {
    
    @Bindable var appViewModel: AppViewModel
    var body: some View {
        Circle()
            .fill(Color(appViewModel.selectedCulture.backgroundColor))
            .frame(width: 120, height: 120)
            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            .padding(.trailing, 10)
    }
}

#Preview {
    CircleCosmeticReward(appViewModel: (AppViewModel()))
}
