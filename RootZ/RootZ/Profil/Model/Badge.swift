//
//  Badge.swift
//  RootZ
//
//  Created by Mounir on 25/07/2025.
//

import Foundation

struct Badge: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let emoji: String
}
