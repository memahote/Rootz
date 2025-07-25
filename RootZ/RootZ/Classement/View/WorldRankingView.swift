//
//  WorldRankingView.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

import Foundation

enum ClassementType: String, CaseIterable, Identifiable {
    case ami = "Ami"
    case monde = "Monde"

    var id: Self { self }
}
