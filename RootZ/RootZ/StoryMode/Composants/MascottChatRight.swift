//
//  MascottChat.swift
//  RootZ
//
//  Created by Mounir Emahoten on 21/07/2025.
//

import SwiftUI

struct MascottChatRight: View {
    var mascott : String
    var message : String
    var messageColor : String
    var body: some View {
        VStack(alignment: .trailing, spacing: 4) {
            Text(message)
                .padding(16)
                .background(
                    Rectangle()
                        .foregroundStyle(.fondAfrique)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 10,
                                bottomLeadingRadius: 10,
                                bottomTrailingRadius: 0,
                                topTrailingRadius: 10
                            )
                        )
                    
                )
                .frame(maxWidth: 300, alignment: .trailing)
                .offset(x: -50)
            
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
    MascottChatRight(mascott: "Lion1", message: "Hello, World!", messageColor: "blue")
}
