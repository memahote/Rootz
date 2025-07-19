//
//  AppViewModel.swift
//  RootZ
//
//  Created by Mounir Emahoten on 19/07/2025.
//

import Foundation


@Observable
class AppViewModel {
    var selectedCulture : CulturesModel
    
    init(selectedCulture: CulturesModel) {
        self.selectedCulture = selectedCulture
    }
}
