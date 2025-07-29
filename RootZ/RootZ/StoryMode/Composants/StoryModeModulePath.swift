//
//  StoryModeModulePath.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct StoryModeModulePath: View {
    @Environment(StoryModeViewModel.self) private var storyViewModel
    let culture: CulturesModel

    var body: some View {
        ScrollView {
            VStack(spacing: 80) {
                ForEach(Array(storyViewModel.currentChapter.modules.enumerated()), id: \.offset) { index, module in
                    if (index + 1) % 6 == 0 {
                        ZStack {
                            if module.isUnlocked {
                                StorymodeButton(module: module, culture: culture, index: index)
                                    .offset(x: sinOffset(for: index))
                            } else {
                                StorymodeButton(module: module, culture: culture, index: index)
                                    .offset(x: sinOffset(for: index))
                                    .opacity(0.5)
                                    .disabled(true)
                            }

                            Image(culture.mascott)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .offset(x: sinOffset(for: index) * -2)
                                .padding(.horizontal)
                        }
                    } else if (index + 1) % 3 == 0 {
                        ZStack {
                            Image(culture.mascott)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .offset(x: sinOffset(for: index) * -1)

                            if module.isUnlocked {
                                StorymodeButton(module: module, culture: culture, index: index)
                                    .offset(x: sinOffset(for: index))
                            } else {
                                StorymodeButton(module: module, culture: culture, index: index)
                                    .offset(x: sinOffset(for: index))
                                    .opacity(0.5)
                                    .disabled(true)
                            }
                        }
                    } else {
                        if module.isUnlocked {
                            StorymodeButton(module: module, culture: culture, index: index)
                                .offset(x: sinOffset(for: index))
                        } else {
                            StorymodeButton(module: module, culture: culture, index: index)
                                .offset(x: sinOffset(for: index))
                                .opacity(0.5)
                                .disabled(true)
                        }
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
    let mockVM = StoryModeViewModel(chapters: ChapterData.berbereChapters)
    
    return StoryModeModulePath(culture: CultureData.defaultCulture)
        .environment(mockVM)
}
