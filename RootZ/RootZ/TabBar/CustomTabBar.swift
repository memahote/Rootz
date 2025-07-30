//
//  CustomTabBar.swift
//  RootZ
//
//  Created by Mounir Emahoten on 26/07/2025.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    var tabColor : String
    var tabAccentColor : String
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                TabBarButton(icon: "book", tab: .story, selectedTab: $selectedTab, tabAccentColor: tabAccentColor)
                Spacer()
                TabBarButton(icon: "parchemin", tab: .quest, selectedTab: $selectedTab,tabAccentColor: tabAccentColor)
                Spacer()
                TabBarButton(icon: "Trophee", tab: .ranking, selectedTab: $selectedTab, tabAccentColor: tabAccentColor)
                Spacer()
                TabBarButton(icon: "ProfilLogo", tab: .profil, selectedTab: $selectedTab, tabAccentColor: tabAccentColor)
            }
            .padding()
            .background(Color(tabColor))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 20)
            .shadow(radius: 5)
//            MARK: -A voir
            .offset(y: 10)
            
//        MARK:  - Ancien
//            .padding(.bottom)
        }
    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(.story), tabColor: "ButtonAfrique", tabAccentColor: "fondAfrique")
}
