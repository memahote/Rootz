//
//  UserViewModel.swift
//  RootZ
//
//  Created by Mounir on 25/07/2025.
//

import Foundation

@Observable
class UserViewModel{
     var user: User

    init() {
        self.user = User(nom: "Mounir", pseudo: "Mounir76", mascotte: "Lion1", score: 2580)
    }
}
