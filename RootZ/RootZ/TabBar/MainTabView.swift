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
//    @State private var quizViewModel = QuizViewModel()
    @State private var questViewModel = QuestViewModel(quests: quests, questOfMonthProgress: 0, berbereChapters: ChapterData.berbereChapters, moduleType: .quiz)
    @State private var profilViewModel = ProfilViewModel()
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
                        PrincipalView(appViewModel: viewModel)
                    .environmentObject(RankingWordlist())
                    }
                case .profil:
                    NavigationStack {
                        ProfilView(profilViewModel: profilViewModel, appViewModel: viewModel)
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



