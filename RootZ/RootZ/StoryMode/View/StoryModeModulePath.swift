//
//  StoryModeModulePath.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI


struct StoryModeModulePath: View {
    let modules: [Module]
    let onSelect: (Int) -> Void

    var body: some View {
        ScrollView {
            VStack(spacing: 80) {
                ForEach(Array(modules.enumerated()), id: \.offset) { index, module in
                    Button(action: {
                        onSelect(index)
                    }) {
                        Circle()
                            .frame(width: 60, height: 60)
                           
                    }
                    .offset(x: sinOffset(for: index))
                }
                
                Spacer().frame(height: 100)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 40)
        }
        .frame(maxWidth: .infinity)
        .scrollIndicators(.hidden)
    }
    
    func sinOffset(for index: Int) -> CGFloat {
        let amplitude: CGFloat = 100
        return CGFloat(sin(Double(index) * .pi / 4)) * amplitude
    }

}

#Preview {
    StoryModeModulePath(
        modules: ChapterData.berbereChapters[0].modules,
        onSelect: { index in
            print("Module \(index) sélectionné")
        }
    )
}
