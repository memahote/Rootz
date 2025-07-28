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
    @Binding var selectedCosmeticID: UUID?
    
    var body: some View {
        let filtered = cosmetics.filter { $0.category == category }.sorted{
            $0.isUnlocked && !$1.isUnlocked
        }
        
        LazyVGrid(
            columns: [
                GridItem(.fixed(116)),
                GridItem(.fixed(116)),
                GridItem(.fixed(116))
            ],
            alignment: .center,
            spacing: 28
        ) {
            ForEach(filtered) { cosmetic in
                CosmeticCard(appViewModel: (AppViewModel()), cosmetic: cosmetic,
                             onSelect: {selectedCosmeticID = cosmetic.id}, isSelected: cosmetic.id == selectedCosmeticID)
                
            }
        }.padding()
    }
    
}



#Preview {
    CosmeticGrid(
        category: .tete,
        cosmetics: cosmetics,
        selectedCosmeticID: .constant(nil)
    )
}
