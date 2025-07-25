//
//  Mascotte.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

import Foundation

struct Mascotte: Identifiable {
    let id = UUID()
    let imageName: String
    let score: Int
    let position: Int
}
