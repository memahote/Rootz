//
//  CosmeticCard.swift
//  RootZ
//
//  Created by YacineBahaka  on 23/07/2025.
//

import SwiftUI

struct CosmeticCard: View {
    @Bindable var appViewModel: AppViewModel
    
    var cosmetic: Cosmetic
    var onSelect: () -> Void
    var isSelected = false
    @State var showLockedAlert = false
    var body: some View {
        
        // Si le booléen du cosmetic est vrai affiche la card sans cadenas
        Button(action: {
            if cosmetic.isUnlocked {
                onSelect()
                print("Cosmétique sélectionné : \(cosmetic.name)")
            } else {
                showLockedAlert = true
            }
        }) {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(cosmetic.isUnlocked ? (isSelected ? Color(appViewModel.selectedCulture.buttonColor) : Color(appViewModel.selectedCulture.accentColor).opacity(0.5)) : Color.gray.opacity(0.5))
                    .frame(width: 116, height: 116)
                
                Image(cosmetic.image)
                
                if !cosmetic.isUnlocked{
                    Image("cadenas1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .offset(y: -60)
                }
            }
        }.alert("Cosmétique verrouillé", isPresented: $showLockedAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("Ce cosmétique n’est pas encore débloqué.")
        }
        
    }
    
}
#Preview {
    CosmeticCard(
        appViewModel: (AppViewModel()),
        cosmetic: cosmetics[0],
        onSelect: {},
        isSelected: true
    )
}
