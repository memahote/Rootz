//
//  storymode.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct storymode: View {
    @Bindable var viewModel: AppViewModel
    
    var body: some View {
        ZStack {
            Color(viewModel.selectedCulture.backgroundColor)
                .ignoresSafeArea()
            
            VStack {
                StoryModeHeaderView(viewModel : viewModel)

                StoryModeModulePath(
                    modules: ChapterData.berbereChapters[0].modules,
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
        storymode(viewModel: (AppViewModel(selectedCulture: CulturesModel(
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
}
