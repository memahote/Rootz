//
//  PodiumViewModel.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

import Foundation
import SwiftUI

class PodiumViewModel: ObservableObject {
    @Published var mascottes: [Mascotte] = [
        Mascotte(imageName: "Planete1", score: 3210, position: 2),
        Mascotte(imageName: "Lion1", score: 5030, position: 1),
        Mascotte(imageName: "Cameleon1", score: 2789, position: 3)
    ]
    
    func updateScore(for position: Int, newScore: Int) {
        if let index = mascottes.firstIndex(where: { $0.position == position }) {
            mascottes[index] = Mascotte(
                imageName: mascottes[index].imageName,
                score: newScore,
                position: mascottes[index].position
            )
        }
    }
}

