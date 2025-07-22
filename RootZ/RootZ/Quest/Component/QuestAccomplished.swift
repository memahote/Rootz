//
//  QuestAccomplished.swift
//  RootZ
//
//  Created by YacineBahaka  on 20/07/2025.
//

import SwiftUI

struct QuestAccomplished: View {
    var body: some View {
        VStack{
            HStack{
                Text("Finir les quêtes du mois")
                Text("6/25")
            }.bold()
            
            ProgressView(value: 6, total: 25)
                .frame(width: 48, height: 50)
                .tint(.green)
                .scaleEffect(6.0)
        }
        .frame(width: 331, height: 108)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.fondAfrique).ignoresSafeArea()
                
        ).overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 2)
            
        ).padding(.bottom)
    }
}

#Preview {
    QuestAccomplished()
}
