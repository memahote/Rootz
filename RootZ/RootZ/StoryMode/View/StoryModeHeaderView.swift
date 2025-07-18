//
//  StoryModeHeaderView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 18/07/2025.
//

import SwiftUI

struct StoryModeHeaderView: View {
    var body: some View {
        VStack {
            
            HStack (alignment: .bottom){
                Button {
                    
                } label: {
                    Image(.berberFlag)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 55, height: 55)
                        .shadow(radius: 5)
                }
                
                Spacer()
                
                HStack (alignment: .top){
                    Text("0")
                        .font(.custom("Quicksand", size: 40))
                        .foregroundStyle(.gray)
                    Image(.flammeOff)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                }
                
            }
            .padding()
            
            Button {
                
            } label: {
                
                VStack{
                    Text("Chapitre 1")
                        .font(.custom("Baloo2", size: 32))
                        .foregroundStyle(.white)
                    
                    Text("Les symbols de ma culture")
                        .font(.custom("Baloo2", size: 16))
                        .foregroundStyle(.white)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 350, height: 85)
                        .foregroundStyle(.buttonAfrique)
                    
                )
            }
            
            
        }
    }
}

#Preview {
    StoryModeHeaderView()
}
