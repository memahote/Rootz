//
//  MainTabView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

enum Tab {
    case story, quest, ranking, profil
}

struct MainTabView: View {
    @State private var viewModel = AppViewModel()
    @State private var selectedTab: Tab = .story

    var body: some View {
        ZStack(alignment: .bottom) {
            
            switch selectedTab {
            case .story:
                NavigationStack {
                    StoryMode(appViewModel: viewModel)
                }
            case .quest:
                NavigationStack {
                    QuestView()
                }
            case .ranking:
                NavigationStack {
                    PrincipalView()
                }
            case .profil:
                NavigationStack {
                    ProfilView(appViewModel: viewModel)
                }
            }

            CustomTabBar(
                selectedTab: $selectedTab,
                tabColor: viewModel.selectedCulture.buttonColor,
                tabAccentColor: viewModel.selectedCulture.backgroundColor
            )
        }
    }
}

#Preview {
    MainTabView()
}
