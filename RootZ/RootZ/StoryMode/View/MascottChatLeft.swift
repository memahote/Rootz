//
//  MascottChatLeft.swift
//  RootZ
//
//  Created by Mounir Emahoten on 21/07/2025.
//

import SwiftUI

struct MascottChatLeft: View {
    var mascott : String
    var message : String
    var messageColor : String
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(message)
                .padding(16)
                .background(
                    Rectangle()
                        .foregroundStyle(.fondAfrique)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 10,
                                bottomLeadingRadius: 0,
                                bottomTrailingRadius: 10,
                                topTrailingRadius: 10
                            )
                        )
                    
                )
                .frame(maxWidth: 300, alignment: .leading)
                .offset(x: 70)
            
            Image(mascott)
                .resizable()
                .scaledToFit()
                .frame(width: 75)
        }
        .padding(.trailing, 16)
        .padding(.bottom, 12)
        
    }
}


#Preview {
    MascottChatLeft(mascott: "Lion1", message: "Hello, World!", messageColor: "blue")
}
