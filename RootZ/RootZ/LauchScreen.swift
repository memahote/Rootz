import SwiftUI

struct LaunchScreen: View {
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            Color(red: 0.96, green: 0.94, blue: 0.91)
                .ignoresSafeArea()
          
            Image("logoapp")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .scaleEffect(isAnimating ? 1.1 : 1.0)
                .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: isAnimating)
                .zIndex(1)
            
           
        }
        .ignoresSafeArea()
        .onAppear {
            isAnimating = true
        }
    }
}

#Preview {
    LaunchScreen()
}
