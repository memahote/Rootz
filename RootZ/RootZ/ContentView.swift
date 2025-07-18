//
//  ContentView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 17/07/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       CultureCard(
        culture: CulturesModel(
            name: "Berbère",
            flag: "Berber_flag",
            chapters: [],
            primaryColor: "",
            secondaryColor: "",
            isUnlock: true,
            progressbar: 0.6)
       )
    }
}

#Preview {
    ContentView()
}
