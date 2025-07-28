//
//  MonthOfQuests.swift
//  RootZ
//
//  Created by YacineBahaka  on 20/07/2025.
//

import SwiftUI

struct MonthOfQuests: View {
    @Bindable var appViewModel: AppViewModel
    var body: some View {
        HStack{
            Text(Date(), format: .dateTime.month(.wide))
                .environment(\.locale, .init(identifier: "fr_FR"))
                .bold()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(appViewModel.selectedCulture.backgroundColor))
                        .frame(width: 70, height: 35)
                )
        }.padding(.leading, 36)
    }
}

#Preview {
    MonthOfQuests(appViewModel: (AppViewModel()))
}
