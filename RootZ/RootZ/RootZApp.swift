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
    @State var showOnboarding : Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            if isLogged {
                Loginview()
                    .ignoresSafeArea(.all)
                    .fullScreenCover(isPresented: $showOnboarding) {
                        ContentViews(showOnboarding: $showOnboarding)
                    }
            }
        }
    }
}
