//
//  MascottChat.swift
//  RootZ
//
//  Created by Mounir Emahoten on 21/07/2025.
//

import SwiftUI

struct MascottChatRight: View {
    var mascott: String
    var message: String
    var messageColor: String

    var body: some View {
        VStack(alignment: .trailing, spacing: 8) {
            HStack {

                Text(message)
                    .font(.custom("Nunito-Regular", size: 18))
                    .padding(16)
                    .background(
                        Rectangle()
                            .foregroundStyle(Color(messageColor))
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 10,
                                    bottomLeadingRadius: 10,
                                    bottomTrailingRadius: 0,
                                    topTrailingRadius: 10
                                )
                            )
                    )
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.trailing, 70)
            }

            Image(mascott)
                .resizable()
                .scaledToFit()
                .frame(width: 75)
                .padding(.trailing, 8)
        }
        
    }
}



#Preview {
    MascottChatRight(mascott: "Lion1", message: "Hello, World!", messageColor: "FondAfrique")
}
