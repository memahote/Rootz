//
//  TimeLeftQuest.swift
//  RootZ
//
//  Created by YacineBahaka  on 21/07/2025.
//

import SwiftUI

struct TimeLeftQuest: View {
    var body: some View {
        HStack {
            Image(systemName: "timer")
            Text("8 jours")
            Spacer()
        }.padding()
            .frame(width: 331, height: 65)
            .bold()
    }
}

#Preview {
    TimeLeftQuest()
}
