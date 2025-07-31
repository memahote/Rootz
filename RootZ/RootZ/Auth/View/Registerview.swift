//
//  Loginview.swift
//  RootZ
//
//  Created by Mounir Emahoten on 25/07/2025.
//

import SwiftUI

struct Registerview: UIViewControllerRepresentable {
    
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let registerVC = ViewController()
       
        return UINavigationController(rootViewController: registerVC)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
}

#Preview {
    Registerview()
        .ignoresSafeArea()
}
