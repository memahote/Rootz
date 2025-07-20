//
//  MonthOfQuests.swift
//  RootZ
//
//  Created by YacineBahaka  on 20/07/2025.
//

import SwiftUI

struct MonthOfQuests: View {
    var body: some View {
        HStack{
            Text("Juillet")
                .bold()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.fondAfrique)
                        .frame(width: 70, height: 35)
                )
        }.padding(.leading, 36)
    }
}

#Preview {
    MonthOfQuests()
}
