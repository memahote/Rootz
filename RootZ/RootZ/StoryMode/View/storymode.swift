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
            StoryModeHeaderView(viewModel : appViewModel)
            
            StoryModeModulePath(
                modules: appViewModel.storyModeViewModel.currentChapter.modules,
                onSelect: { index in
                    print("Module \(index) sélectionné")
                }
            )
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background( Color(appViewModel.selectedCulture.backgroundColor)
            .ignoresSafeArea())
        
    }
}

#Preview {
    NavigationStack{
        storymode(appViewModel: (AppViewModel()))
    }
}
