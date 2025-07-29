//
//  CustomizeAvatarViewModel.swift
//  RootZ
//
//  Created by YacineBahaka  on 29/07/2025.
//

import SwiftUI

@Observable
class CustomizeAvatarViewModel{
    
    var selectedHat: String?
    var selectedLunette: String?
    var selectedNourriture: String

    init(selectedHat: String? = nil, selectedLunette: String? = nil, selectedNourriture: String) {
        self.selectedHat = selectedHat
        self.selectedLunette = selectedLunette
        self.selectedNourriture = selectedNourriture
    }
}
