//
//  SwiftUIView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 27/07/2025.
//

import SwiftUI

struct SwiftUIView: View {
    @State var showPopover : Bool = false
    
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            
            Button {
                showPopover.toggle()
            } label: {
                Text("Click Me")
                    .font(.title)
            }
            .popover(isPresented: $showPopover) {
                VStack {
                    Text("Hello you")
                    Text("Hello you")
                        
                }
                .presentationCompactAdaptation(.popover)
                .padding()
            }

        }
    }
}

#Preview {
    SwiftUIView()
}
