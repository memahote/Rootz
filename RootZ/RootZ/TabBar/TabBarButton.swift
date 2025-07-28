//
//  TabBarButton.swift
//  RootZ
//
//  Created by Mounir Emahoten on 26/07/2025.
//

import SwiftUI

struct TabBarButton: View {
    var icon: String
    var tab: Tab
    @Binding var selectedTab: Tab
    var tabAccentColor : String
    var isSelected: Bool {
        selectedTab == tab
    }
    
    var body: some View {
        Button(action: {
            selectedTab = tab
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(isSelected ? Color(tabAccentColor).opacity(0.5) : Color.clear)
                    .frame(width: 66, height: 60)
                
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 56, height: 44)
            }
            
            
        }
    }
}

#Preview {
    TabBarButton(icon: "book", tab: .story, selectedTab: .constant(.story), tabAccentColor: "fondAfrique")
}
