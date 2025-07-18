//
//  SwiftUIView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 17/07/2025.
//

import SwiftUI

struct SwiftUIView: View {
    let symbols = ["square.and.arrow.up.fill", "trash", "externaldrive.fill"]
    
    var body: some View {
        ZStack {
            Color(.fondAfrique).ignoresSafeArea()

                    ForEach(0..<30, id: \.self) { index in
                        Image(systemName:symbols[index % symbols.count])
                            .resizable()
                            .frame(width: 24, height: 24)
                            .position(
                                x: CGFloat.random(in: 0...UIScreen.main.bounds.width),
                                y: CGFloat.random(in: 0...UIScreen.main.bounds.height)
                            )
                            .opacity(0.06)
                    }
                }
//            VStack {
//                Text("Chapitre 1")
//                    .foregroundStyle(.white)
//                    .bold()
//                    .font(.title)
//                    .padding(.horizontal)
//                Text("Les Symboles de ma culture")
//                    .foregroundStyle(.white)
//                    .font(.headline)
//            }
//            .background(
//                RoundedRectangle(cornerRadius: 10)
//                    .frame(width: 275, height: 75)
//                    .foregroundStyle(.buttonAfrique)
//            )
        
    }
}

#Preview {
    SwiftUIView()
}
