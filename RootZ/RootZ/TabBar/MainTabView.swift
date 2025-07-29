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
    @State private var questViewModel = QuestViewModel(quests: quests, questOfMonthProgress: 0)
    @State private var selectedTab: Tab = .story
    
    var body: some View {
        ZStack {
            Group {
                switch selectedTab {
                case .story:
                    NavigationStack {
                        storymode(appViewModel: viewModel)
                    }
                case .quest:
                    NavigationStack{
                        QuestView(appViewModel: viewModel, questViewModel: questViewModel)
                    }
                case .ranking:
                    NavigationStack {
                        PrincipalView()
                    .environmentObject(RankingWordlist())
                    }
                case .profil:
                    NavigationStack {
                        ProfilView(appViewModel: viewModel)
                            .environmentObject(ProfilViewModel())
                            .environmentObject(AmisViewModel())
                    }
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



