//
//  CustomizeAvatarView.swift
//  RootZ
//
//  Created by YacineBahaka  on 22/07/2025.
//

import SwiftUI

struct CustomizeAvatarView: View {
    @State var selectedCategory: ECosmeticCategory = .tete
    
    var body: some View {
        //        ZStack(alignment: .top){
        
        //            MARK: - BANNER
        HStack(alignment: .center){
            Spacer()
            Image("Lion1")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .shadow(radius: 10)
            Spacer()
        }.background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.fondAfrique).ignoresSafeArea()
                .frame(width: 402, height: 400)
        )
        
        Spacer()
        
        HStack(spacing: 94){
            ForEach(ECosmeticCategory.allCases, id: \.self){ category in
                Button(category.rawValue){
                    selectedCategory = category
                }.background(RoundedRectangle(cornerRadius: 10)
                    .fill(selectedCategory == category ? Color.buttonAfrique : Color.buttonValidate)
                    .frame(width: 112, height: 32)
                ).foregroundStyle(.white)
            }
        }.padding(.top, 130)
        
            
            //                    MARK: - FIRST BUTTON
//            Button(action: {
//                isSelected = 1
//            }, label: {
//                Text("Tête")
//                    .foregroundStyle(.white)
//            }).background(RoundedRectangle(cornerRadius: 10)
//                .fill(isSelected == 1 ? Color.buttonAfrique : Color.buttonValidate)
//                .frame(width: 112, height: 32)
//            )
            
            //        MARK: - GRID (COSMETICS)
            ScrollView{
                CosmeticGrid(category: selectedCategory, cosmetics: cosmetics)
            }
            
            //        }
        }
    }



#Preview {
    CustomizeAvatarView()
}
