//
//  CosmeticCard.swift
//  RootZ
//
//  Created by YacineBahaka  on 23/07/2025.
//

import SwiftUI

struct CosmeticCard: View {
    var body: some View {
        
        // Si le booléen du cosmetic est vrai affiche la card sans cadenas
        // Si le booléen du cosmetic est faux affiche la card avec cadenas
        
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.blue)
            .frame(width: 100, height: 100)
            .padding()
    }
}

#Preview {
    CosmeticCard()
}
