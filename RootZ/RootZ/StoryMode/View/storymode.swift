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
        ZStack {
            Color(appViewModel.selectedCulture.backgroundColor)
                .ignoresSafeArea()

            VStack {
                StoryModeHeaderView(viewModel : appViewModel)

                StoryModeModulePath(
                    modules: appViewModel.storyModeViewModel.currentChapter.modules,
                    onSelect: { index in
                        print("Module \(index) sélectionné")
                    }
                )
                
            }
        }
    }
}

#Preview {
    NavigationStack{
        storymode(appViewModel: (AppViewModel()))
    }
}
