//
//  storymode.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct storymode: View {
    var body: some View {
        ZStack {
            Color.fondAfrique
                .ignoresSafeArea()
            
            VStack {
                StoryModeHeaderView()
                ModulePathView(
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
    storymode()
}
