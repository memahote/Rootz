//
//  WinnersPicture.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

// Vue du podium


import SwiftUI

struct PodiumView: View {
    let mascottes: [Mascotte]
    @Bindable   var appViewModel: AppViewModel

    var body: some View {
        ZStack {
            
            Color(appViewModel.selectedCulture.backgroundColor)
                .ignoresSafeArea()
            
            HStack(alignment: .bottom, spacing: 24) {
                ForEach([2, 1, 3], id: \.self) { position in
                    if let mascotte = mascottes.first(where: { $0.position == position }) {
                        VStack(spacing: 0) {
                            // Mascotte au-dessus du podium
                            Image(mascotte.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .padding(.bottom, 4)
                            
                            // Podium
                            RoundedRectangle(cornerRadius: 12)
                                .fill(LinearGradient(
                                    gradient: Gradient(colors: [couleurDégradéHaut(position), couleurDégradéBas(position)]),
                                    startPoint: .top,
                                    endPoint: .bottom)
                                )
                                .frame(width: largeurDuPodium(pour: position),
                                       height: hauteurDuPodium(pour: position))
                                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 4)
                                .overlay(
                                    VStack(spacing: 4) {
                                        Text("\(position)")
                                            .font(.headline)
                                            .bold()
                                        Text("\(mascotte.score)")
                                            .font(.custom("Quicksand", size: 16))
                                            .bold()
                                    }
                                        .foregroundColor(.white)
                                        .padding(.top, 8),
                                    alignment: .top
                                )
                        }
                    }
                }
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom) // tout collé en bas
            
        }
    }
    
    private func couleurDégradéHaut(_ position: Int) -> Color {
        switch position {
        case 1: return Color.yellow.opacity(0.9)
        case 2: return Color.gray.opacity(0.8)
        case 3: return Color.brown.opacity(0.8)
        default: return .clear
        }
    }
    
    private func couleurDégradéBas(_ position: Int) -> Color {
        switch position {
        case 1: return Color.orange
        case 2: return Color.gray.opacity(0.5)
        case 3: return Color(red: 139/255, green: 69/255, blue: 19/255)
        default: return .clear
        }
    }
    
    private func hauteurDuPodium(pour position: Int) -> CGFloat {
        switch position {
        case 1: return 250
        case 2: return 170
        case 3: return 120
        default: return 0
        }
    }
    
    private func largeurDuPodium(pour position: Int) -> CGFloat {
        switch position {
        case 1: return 100
        case 2: return 100
        case 3: return 100
        default: return 0
        }
    }
}
#Preview {
    PodiumView(mascottes: [
        Mascotte(imageName: "Planete1", score: 1900, position: 2),
        Mascotte(imageName: "Lion1", score: 2200, position: 1),
        Mascotte(imageName: "Cameleon1", score: 1789, position: 3)
    ], appViewModel: AppViewModel())
}
