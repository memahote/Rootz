//
//  MainTabView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct MainTabView: View {
    @State private var viewModel = AppViewModel()

    var body: some View {
        TabView {
            NavigationStack{
                storymode(appViewModel: viewModel)
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



