//
//  CustomizeAvatarView.swift
//  RootZ
//
//  Created by YacineBahaka  on 22/07/2025.
//

import SwiftUI

struct CustomizeAvatarView: View {
    @Bindable var appViewModel: AppViewModel
    @Bindable var userViewModel: UserViewModel
    @State var selectedCategory: ECosmeticCategory = .tete
    @State private var selectedCosmeticID: UUID? = nil
    
    var body: some View {
        
        //            MARK: - BANNER
        VStack{
            HStack(alignment: .center){
                Spacer()
                Image(userViewModel.user.mascotte)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .shadow(radius: 10)
                    .offset(y: 65)
                Spacer()
            }
        }.padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(appViewModel.selectedCulture.accentColor))
                    .ignoresSafeArea()
                    .frame(height: 400)
            )
//        MARK: - FIN BANNER
        
//       MARK: - DÉBUT CATEGORY
        ZStack{
            Color(appViewModel.selectedCulture.backgroundColor).ignoresSafeArea()
            
            HStack(spacing: 16){
                ForEach(ECosmeticCategory.allCases, id: \.self){ category in
                    Button(category.rawValue){
                        selectedCategory = category
                        
                    }.frame(width: 112, height: 32)
                        .background(RoundedRectangle(cornerRadius: 10)
                            .fill(selectedCategory == category ? Color(appViewModel.selectedCulture.buttonColor) : Color.buttonValidate)
                                    
                        ).foregroundStyle(.white)
                }
            }.padding(.vertical, 4)
            
        }.frame(height: 60)
            .padding(.top, 65)
            .frame(maxWidth: .infinity)
        
//            MARK: - FIN CATEGORY
        
//        MARK: - GRID (COSMETICS)
        ZStack{
            Color(appViewModel.selectedCulture.backgroundColor).ignoresSafeArea()
            ScrollView{
                CosmeticGrid(
                    category: selectedCategory,
                    cosmetics: cosmetics,
                    selectedCosmeticID: $selectedCosmeticID
                )
                .padding(.bottom, 100)
            }.padding(.top, 20)
            //            MARK: - FIN GRID
        }
    }
}


#Preview {
    CustomizeAvatarView(appViewModel: (AppViewModel()), userViewModel: (UserViewModel()))
}
