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
            
            VStack(){
                //           MARK: - Top part
                VStack{
                    //               MARK: - First block
                    HStack{
                        Text("Juillet")
                            .bold()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.fondAfrique)
                                    .frame(width: 70, height: 35)
                            )
                        
                        Spacer()
                        
                        Circle()
                            .fill(Color.fondAfrique)
                            .frame(width: 120, height: 120)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                        
                    }.padding(.horizontal)
                    
                    //                MARK: - Text time
                    HStack(alignment: .firstTextBaseline){
                        Image(systemName: "timer")
                        Text("8 jours")
                    }.padding(.bottom)
                    
                    //                ProgressBar Quests
                    VStack{
                        HStack{
                            Text("Finir les quêtes du mois")
                            Text("6/12")
                        }
                        
                        ProgressView(value: 6, total: 12)
                            .frame(width: 315)
                    }
                    
                }.background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.couleurAccent).ignoresSafeArea()
                        .frame(width: 402, height: 300)
                )
                Spacer()
//
                    VStack{
                        Text("Quêtes du jour")
                        Text("Quête 1")
                        ProgressView(value: 0, total: 2)
                            .frame(width: 315)
                        
                        Text("Quête 2")
                        ProgressView(value: 2, total: 2)
                            .frame(width: 315)
                        
                        Text("Quête 3")
                        ProgressView(value: 2, total: 4)
                            .frame(width: 315)
                    }
                Spacer()
                
            }
        }
    }
}

#Preview {
    QuestView()
}
