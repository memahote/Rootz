//
//  CultureChoice.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct CultureChoice: View {
    @Bindable var viewModel: AppViewModel
    @Environment(\.dismiss) private var dismiss

    let cultures = CultureData.allCultures
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(cultures) { cultures in
                        CultureCard(
                            culture: cultures,
                            onSelect: {
                                viewModel.updateCulture(to: cultures)
                                dismiss()
                            }
                        )

                    }
                    
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background( Color(viewModel.selectedCulture.backgroundColor)
            .ignoresSafeArea())
    }
}

#Preview {
    CultureChoice(viewModel: (AppViewModel()))
}
