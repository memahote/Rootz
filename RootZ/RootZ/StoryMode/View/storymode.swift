//
//  storymode.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct storymode: View {
    @Bindable var appViewModel: AppViewModel
    
    var body: some View {
        VStack {
            StoryModeHeaderView(viewModel: appViewModel)
            
            StoryModeModulePath(culture: appViewModel.selectedCulture)
                .environment(appViewModel.storyModeViewModel)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(appViewModel.selectedCulture.backgroundColor)
            .ignoresSafeArea())
    }
}

#Preview {
    NavigationStack{
        storymode(appViewModel: (AppViewModel()))
    }
}
