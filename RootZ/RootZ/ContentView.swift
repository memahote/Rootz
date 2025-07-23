//
//  ContentView.swift
//  RootZ
//
//  Created by Mounir Emahoten on 17/07/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = OnboardingViewModel()
    var body: some View {
        ZStack {
            Color(.backgroundDefault)
            .ignoresSafeArea()
            
            VStack {
      
                if viewModel.currentStep <= 6 {
                    ProgressView(value: viewModel.progress)
                        .progressViewStyle(LinearProgressViewStyle(tint: .green))
                        .padding(.horizontal)
                        .padding(.top)
                        .animation(.easeInOut, value: viewModel.progress)
                }

                
                Spacer()
                
                switch viewModel.currentStep {
                case 1:
                    OnboardingStepView(viewModel: viewModel)
                case 2:
                    OnboardingStepView2(viewModel: viewModel)
                case 3:
                    OnboardingStepView3(viewModel: viewModel)
                case 4:
                    OnboardingStepView4(viewModel: viewModel)
                case 5:
                    OnboardingStepView5(viewModel: viewModel)
                case 6:
                    OnboardingStepView6(viewModel: viewModel)
                case 7:
                    OnboardingCongratsView(viewModel: viewModel)
                case 8:
                    CulturalProfileResultView(viewModel: viewModel)

                
                default:
                    Text("Étape non définie")
                }
                
                Spacer()
            }
        }
        
    
    }
}


#Preview {
    ContentView()
}

