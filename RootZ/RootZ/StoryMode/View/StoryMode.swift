//
//  storymode.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct StoryMode: View {
    @Bindable var appViewModel: AppViewModel
    
    var body: some View {
        VStack {
            StoryModeHeaderView(viewModel : appViewModel)
            
            StoryModeModulePath(viewModel: appViewModel)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background( Color(appViewModel.selectedCulture.backgroundColor)
            .ignoresSafeArea())
        
    }
}

#Preview {
    NavigationStack{
        StoryMode(appViewModel: (AppViewModel()))
    }
}
