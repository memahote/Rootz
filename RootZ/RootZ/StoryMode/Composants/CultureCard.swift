//
//  CultureCard.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct CultureCard: View {
    let culture: CulturesModel
    let onSelect: () -> Void
    
    var body: some View {
        Button(action: onSelect) {
            VStack {
                Image(culture.flag)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .shadow(radius: 4)
                
                Text(culture.name)
                    .font(.custom("Quicksand", size: 18))
                    .foregroundStyle(.black)
                
                if culture.isUnlock {
                    Text("\(Int(culture.progressbar * 100))%")
                        .font(.custom("Quicksand", size: 12))
                        .foregroundStyle(.black)
                }
            }
        }
    }
}


#Preview {
    CultureCard(
        culture: CultureData.defaultCulture,
        onSelect: {}
    )
}


