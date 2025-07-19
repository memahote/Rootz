//
//  MainTabView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct MainTabView: View {
    @State private var viewModel = AppViewModel(selectedCulture:CulturesModel(
        name: "Berbère",
        flag: "Berber_flag",
        chapters: ChapterData.berbereChapters,
        backgroundColor: "FondAfrique",
        buttonColor: "ButtonAfrique",
        accentColor: "CouleurAccent",
        accent2Color: "CouleurAccent2",
        isUnlock: true,
        progressbar: 0.6
    ) )
    
    var body: some View {
        TabView {
            NavigationStack{
                storymode(viewModel: viewModel)
            }
            .tabItem {
                Label("Histoire", systemImage: "book.fill")
            }
        }
    }
}

#Preview {
    MainTabView()
}
