//
//  WorldRankingView.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

import SwiftUI

struct WorldRankingView: View {
//    @State private var selectedPage = 0
    var body: some View {

            VStack {
                PickerView()
                HeaderViewRanking()
                PodiumView()
                ClassementListeView()
                    .padding(.vertical)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("FondAfrique").ignoresSafeArea())
                
            
    }
    
}

#Preview {
    WorldRankingView()
}
