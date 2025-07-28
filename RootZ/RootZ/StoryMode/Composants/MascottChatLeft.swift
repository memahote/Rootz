//
//  MascottChatLeft.swift
//  RootZ
//
//  Created by Mounir Emahoten on 21/07/2025.
//

import SwiftUI

struct MascottChatLeft: View {
    var mascott: String
    var message: String
    var messageColor: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
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
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 10,
                                    topTrailingRadius: 10
                                )
                            )
                    )
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.leading, 70)
            }

            Image(mascott)
                .resizable()
                .scaledToFit()
                .frame(width: 75)
                .padding(.leading, 8)
        }
        .padding(.horizontal)
        .padding(.bottom, 12)
    }
}



#Preview {
    MascottChatLeft(mascott: "Lion1", message: "Hello, World!", messageColor: "FondAfrique")
}
