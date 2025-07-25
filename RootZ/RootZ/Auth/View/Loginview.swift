//
//  Loginview.swift
//  RootZ
//
//  Created by Mounir Emahoten on 25/07/2025.
//

import SwiftUI

struct Loginview: UIViewControllerRepresentable {
    
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let loginVC = ViewController()
       
        return UINavigationController(rootViewController: loginVC)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

#Preview {
    Loginview()
}
