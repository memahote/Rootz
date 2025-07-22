//
//  InformationView.swift
//  RootZ
//
//  Created by Mounir on 20/07/2025.
//
// INFO DE L'UTILISATEUR
import SwiftUI

struct InformationView: View {
    let name: String
    let origins: [String]

    var body: some View {
        VStack(alignment: .leading,) {
            Text(name)
                .font(.custom("Baloo2-Medium", size: 20))

            Text("Membre depuis Décembre 2025")
                .font(.custom("Baloo2", size: 18))

            HStack {
                ForEach(origins, id: \.self) { origin in
                    Image(origin)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                        .shadow(radius: 10)
                }
            }
        }
    }
}
