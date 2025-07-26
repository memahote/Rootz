//
//  StoryModeModulePath.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct StoryModeModulePath: View {
    @Bindable var viewModel: AppViewModel
    
    var body: some View {
        ScrollView {
            VStack(spacing: 80) {
            
                ForEach(Array(viewModel.storyModeViewModel.currentChapter.modules.enumerated()), id: \.offset) { index, module in
                    
                    if (index + 1) % 6 == 0 {
                        ZStack {
                            
                            StorymodeButton(moduleColor: module.color, imageName: module.icon)
                                .offset(x: sinOffset(for: index))
                            Image(viewModel.selectedCulture.mascott)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .offset(x: sinOffset(for: index) * -2)
                                .padding(.horizontal)
                        }
                    } else if (index + 1) % 3 == 0 {
                        ZStack {
                            Image(viewModel.selectedCulture.mascott)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .offset(x: sinOffset(for: index) * -1)
                            
                            StorymodeButton(moduleColor: module.color, imageName: module.icon)
                                .offset(x: sinOffset(for: index))
                        }
                    } else {
                    
                        StorymodeButton(moduleColor: module.color, imageName: module.icon)
                            .offset(x: sinOffset(for: index))
                    }
                }
            }
            .scrollIndicators(.hidden)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 40)
        }
    }
    
  
    func sinOffset(for index: Int) -> CGFloat {
        let amplitude: CGFloat = 100
        return CGFloat(sin(Double(index) * .pi / 4)) * amplitude
    }
}



#Preview {
    StoryModeModulePath(viewModel: AppViewModel())
}
