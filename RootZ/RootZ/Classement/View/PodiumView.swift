//
//  WinnersPicture.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

// View/PodiumView.swift

import SwiftUI

struct PodiumView: View {
    @StateObject private var viewModel = PodiumViewModel()

    var body: some View {
        HStack(alignment: .bottom, spacing: 16) {
            ForEach([2, 1, 3], id: \.self) { position in
                if let mascotte = viewModel.mascottes.first(where: { $0.position == position }) {
                    VStack {
                        if mascotte.imageName == "Cameleon1"{
                            Image(mascotte.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60)

                        } else {
                            Image(mascotte.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80)
                        }
                        

                        Rectangle()
                            .fill(couleurDuPodium(pour: mascotte.position))
                            .frame(width: 80, height: hauteurDuPodium(pour: mascotte.position))
                            .overlay(
                                VStack(spacing: 4) {
                                    Text("\(mascotte.position)")
                                        .font(.title)
                                        .bold()
                                    Text("\(mascotte.score)")
                                        .font(.custom("Quicksand", size: 18))
                                        .bold()
                                }
                                .foregroundColor(.white)
                            )
                        
                    }
                }
            }
        }
    
        .frame(maxWidth: .infinity)
        .background(Color("CouleurAccent"))
        
    }
    

    private func couleurDuPodium(pour position: Int) -> Color {
        switch position {
        case 1: return .yellow
        case 2: return .gray
        case 3: return .brown
        default: return .clear
        }
    }

    private func hauteurDuPodium(pour position: Int) -> CGFloat {
        switch position {
        case 1: return 160
        case 2: return 120
        case 3: return 100
        default: return 0
        }
    }
}

#Preview {
    PodiumView()
}
