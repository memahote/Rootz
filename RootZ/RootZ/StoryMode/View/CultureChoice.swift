//
//  CultureChoice.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct CultureChoice: View {
    let cultures = CultureData.allCultures
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(cultures) { cultures in
                    CultureCard(culture: cultures)
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    CultureChoice()
}
