//
//  QuestView.swift
//  RootZ
//
//  Created by YacineBahaka  on 17/07/2025.
//

import SwiftUI

struct QuestView: View {
    var body: some View {
        ZStack{
            Color.fondAfrique.ignoresSafeArea()
            
            VStack {
                
//               MARK: - FIRST PART
                VStack{
                    HStack{
//                        MARK: - MONTH
                        MonthOfQuests()
                        
                        Spacer()
                        
//                        MARK: - CIRCLE COSMETIC REWARD
                        CircleCosmeticReward()
                    }.padding(.horizontal)
//                MARK: - TIME LEFT
                    
                    HStack {
                        Image(systemName: "timer")
                        Text("8 jours")
                        Spacer()
                    }.padding()
                        .frame(width: 331, height: 65)
                        .bold()
//                        MARK: - QUEST ACCOMPLISHED

                    QuestAccomplished()
                    
                }.background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.couleurAccent).ignoresSafeArea()
                        .frame(width: 402, height: 330)
                )
                
//                MARK: - SECOND PART
                VStack{
                    HStack {
                        Text("Quêtes du jour")
                        Spacer()
                    }.frame(width: 331)
                        .padding()
                        .bold()
                    
//                    MARK: - LIST OF QUESTS
                    ScrollView{
                        ListQuests(quests: quests)
                    }
                }
            }
        }
    }
}

#Preview {
    QuestView()
}
