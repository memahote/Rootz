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
            backgroundColor: "FondAfrique",
            buttonColor: "ButtonAfrique",
            accentColor: "CouleurAccent",
            accent2Color: "CouleurAccent2",
            isUnlock: true,
            progressbar: 0.6)
       )
    }
}

#Preview {
    ContentView()
}
