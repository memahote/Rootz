//
//  HeaderView.swift
//  RootZ
//
//  Created by Mounir on 20/07/2025.
// Banniere avec la photo du Lion

import SwiftUI

struct HeaderView: View {
    @Bindable   var appViewModel: AppViewModel

    var body: some View {
        VStack {
            Image("Lion1")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
        }
        .frame(maxWidth: .infinity)
        .background(Color(appViewModel.selectedCulture.backgroundColor))
    }
}
