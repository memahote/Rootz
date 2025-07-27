//
//  StorymodeButton.swift
//  RootZ
//
//  Created by Mounir Emahoten on 25/07/2025.
//

import SwiftUI

struct StorymodeButton: View {
    @State var showPopover : Bool = false
    @State var showModuleView : Bool = false
    let module: Module
    
    var body: some View {
        Button(action: {
            showPopover.toggle()
        }) {
            ZStack {
                
                Circle()
                    .fill(Color(module.color))
                    .frame(width: 60, height: 60)
                    .shadow(color: Color.black.opacity(0.2), radius: 8, x: 4, y: 4) .scaleEffect(1.1)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 2)
                    )
                
                Image(systemName: module.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
            }
            
            
        }
        .popover(isPresented: $showPopover) {
            VStack(spacing: 16) {
                Text(module.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Text("+20 XP")
                    .font(.headline)
                    .foregroundColor(.green)
                
                Button(action: {
                   showModuleView = true
                }) {
                    Text("Commencer")
                        .fontWeight(.semibold)
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .background(Color(module.color))
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .fullScreenCover(isPresented: $showModuleView) {
                    ModuleView(module: module, showModuleView: $showModuleView)
                }
            }
            .presentationCompactAdaptation(.popover)
            .padding()
            
        }
        
        
    }
}

#Preview {
    StorymodeButton(module: Module(
        title: "Le Drapeau",
        icon: "flag.fill",
        isUnlocked: true,
        color: "ButtonAfrique",
        modulesPages: [
            ModulePage(
                title: "Introduction",
                content: "Le drapeau est un symbole fort de l'identité culturelle. Il reflète l'histoire, les valeurs et les espoirs d'un peuple.",
                mascott: "Lion1",
                image: "drapeau_intro"
            ),
            ModulePage(
                title: "Les Couleurs",
                content: "Chaque couleur du drapeau a une signification. Le rouge symbolise la force, le vert l'espoir, et le jaune la richesse de la terre.",
                mascott: "Lion2",
                image: "drapeau_couleurs"
            )]
    
    ))
}
