//
//  CultureCard.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct CultureCard: View {
    @Environment(\.dismiss) private var dismiss
    @Bindable var viewModel: AppViewModel
    let culture : CulturesModel
    
    var body: some View {
        Button {
            viewModel.selectedCulture = culture
            dismiss()
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
    CultureCard(viewModel: (AppViewModel(selectedCulture: CulturesModel(
        name: "Berbère",
        flag: "Berber_flag",
        chapters: ChapterData.berbereChapters,
        backgroundColor: "FondAfrique",
        buttonColor: "ButtonAfrique",
        accentColor: "CouleurAccent",
        accent2Color: "CouleurAccent2",
        isUnlock: true,
        progressbar: 0.6
    ))),
        culture: CulturesModel(
            name: "Berbère",
            flag: "Berber_flag",
            chapters: [],
            backgroundColor: "FondAfrique",
            buttonColor: "ButtonAfrique",
            accentColor: "CouleurAccent",
            accent2Color: "CouleurAccent2",
            isUnlock: true,
            progressbar: 0.6,
            associatedCountries: ["maroc", "algérie", "tunisie"],
            associatedRegions: ["afrique"],
            keywords: ["berbere", "tamazight"]
        )
    )
}

