//
//  CosmeticGrid.swift
//  RootZ
//
//  Created by YacineBahaka  on 25/07/2025.
//

import SwiftUI

struct CosmeticGrid: View {
    let category: ECosmeticCategory
    let cosmetics: [Cosmetic]
    var body: some View {
        let filtered = cosmetics.filter { $0.category == category }
        
        LazyVGrid(
            columns: [
                GridItem(.fixed(120)),
                GridItem(.fixed(120)),
                GridItem(.fixed(120))
            ],
            alignment: .leading,
            spacing: 12
        ) {
            ForEach(filtered) { cosmetic in
                CosmeticCard()
            }
        }.padding()
    }
    
}



#Preview {
    CosmeticGrid(category: .haut, cosmetics: cosmetics)
}
