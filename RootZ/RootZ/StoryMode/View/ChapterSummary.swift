//
//  ChapterSummary.swift
//  RootZ
//
//  Created by Mounir Emahoten on 21/07/2025.
//

import SwiftUI

struct ChapterSummary: View {
    @Bindable var viewModel: AppViewModel

    var body: some View {
        ZStack {
            Color(viewModel.selectedCulture.backgroundColor)
                .ignoresSafeArea()
            
            ScrollView {
                ForEach(viewModel.selectedCulture.chapters) { chapter in
                    SummaryCard(viewModel: viewModel)
                }
            }
            .scrollIndicators(.hidden)
            .padding(.top, 15)
        }
    }
}

#Preview {
    ChapterSummary(viewModel: AppViewModel())
}
