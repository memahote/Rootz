//
//  MainTabView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            NavigationStack{
                storymode()
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
