//
//  MascotteCustom.swift
//  RootZ
//
//  Created by YacineBahaka  on 29/07/2025.
//

import SwiftUI

struct MascotteCustom: View {
    @Bindable var profilViewModel: ProfilViewModel
    
    var body: some View {
        ZStack{
            Image(profilViewModel.user.mascotte)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .shadow(radius: 10)
                .offset(y: 65)
            
            Image("hat2")
                .resizable()
                .scaledToFit()
                .scaleEffect(x: -1,y: 1)
                .frame(width: 90, height: 90)
                .offset(x: -9,y: -16)
            
            Image("lunette1")
                .resizable()
                .scaledToFit()
                .scaleEffect(x: -1,y: 1)
                .frame(width: 80, height: 80)
                .offset(x: 0,y: 27)
            
            Image("nourriture1")
                .resizable()
                .scaledToFit()
                .scaleEffect(x: -1,y: 1)
                .frame(height: 65)
                .offset(x: 40,y: 133)
        }
    }
    
}

#Preview {
    MascotteCustom(profilViewModel: (ProfilViewModel()))
}
