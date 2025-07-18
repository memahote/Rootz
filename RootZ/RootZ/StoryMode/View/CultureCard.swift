//
//  CultureCard.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct CultureCard: View {
    let culture : CulturesModel
    
    var body: some View {
        Button {
            
        } label: {
            VStack {
                Image(culture.flag)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .shadow(radius: 4)
                
                Text(culture.name)
                    .font(.custom("Quicksand", size: 18))
                    .foregroundStyle(.black)
                
                culture.isUnlock ?Text("\(Int(culture.progressbar * 100))%").font(.custom("Quicksand", size: 12)) .foregroundStyle(.black) : Text("")
                
            }
        }
        
        
        
    }
}

#Preview {
    CultureCard(
        culture: CulturesModel(
            name: "Berbère",
            flag: "Berber_flag",
            chapters: [],
            primaryColor: "",
            secondaryColor: "",
            isUnlock: true,
            progressbar: 0.6)
    )
}
