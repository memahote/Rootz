//
//  CultureChoice.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct CultureChoice: View {
    @Bindable var viewModel: AppViewModel
    
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
                    CultureCard(viewModel: viewModel, culture: cultures)
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    CultureChoice(viewModel: (AppViewModel(selectedCulture: CulturesModel(
        name: "Berbère",
        flag: "Berber_flag",
        chapters: ChapterData.berbereChapters,
        backgroundColor: "FondAfrique",
        buttonColor: "ButtonAfrique",
        accentColor: "CouleurAccent",
        accent2Color: "CouleurAccent2",
        isUnlock: true,
        progressbar: 0.6
    ))))
}
