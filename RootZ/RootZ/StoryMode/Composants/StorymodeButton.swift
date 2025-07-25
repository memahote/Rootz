//
//  StorymodeButton.swift
//  RootZ
//
//  Created by Mounir Emahoten on 25/07/2025.
//

import SwiftUI

struct StorymodeButton: View {
    var moduleColor : String
    var imageName : String
    
    var body: some View {
        Button(action: {
            
        }) {
            ZStack {
                
                Circle()
                    .fill(Color(moduleColor))
                    .frame(width: 60, height: 60)
                    .shadow(color: Color.black.opacity(0.2), radius: 8, x: 4, y: 4) .scaleEffect(1.1)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 2)
                    )
                
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
            }
            
        }
    }
}

#Preview {
    StorymodeButton(moduleColor: "ButtonAfrique", imageName: "star.fill")
}
