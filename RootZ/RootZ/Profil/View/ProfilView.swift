//
//  ProfilView.swift
//  RootZ
//
//  Created by Mounir on 17/07/2025.
//

import SwiftUI

struct ProfilView: View {
    @State private var viewModel = ProfilViewModel()
    
   
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            Rectangle()
                .frame(width: 300, height: 400)
                .foregroundColor(.white)
        }
        Spacer()

    }
}







#Preview {
    ProfilView()
}
