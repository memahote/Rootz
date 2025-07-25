//
//  RootZApp.swift
//  RootZ
//
//  Created by Mounir Emahoten on 17/07/2025.
//

import SwiftUI

@main
struct RootZApp: App {
    @State private var isLogged = false
    
    var body: some Scene {
        WindowGroup {
            if isLogged {
                MainTabView()
            } else {
                Loginview()
                    .edgesIgnoringSafeArea(.all)
            }
            
        }
    }
}
