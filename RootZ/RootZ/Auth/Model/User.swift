//
//  UserModel.swift
//  RootZ
//
//  Created by Mounir Emahoten on 25/07/2025.
//

import Foundation

struct User : Identifiable {
    let id = UUID()
    let name : String
    let email : String
    let password : String
}
