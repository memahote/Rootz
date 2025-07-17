//
//  QuestionnaireContenView.swift
//  RootZ
//
//  Created by Apprenant156 on 17/07/2025.
//

import SwiftUI

struct ContentViews: View {
    @StateObject private var viewModel = OnboardingViewModel()
    
    var body: some View {
        VStack {
            ProgressView(value: viewModel.progress)
                .progressViewStyle(LinearProgressViewStyle(tint: .green))
                .padding(.horizontal)
                .padding(.top)
                .animation(.easeInOut, value: viewModel.progress)
            
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
                OnboardingStepView7(viewModel: viewModel)
            case 8:
                OnboardingStepView8(viewModel: viewModel)
            
            
            default:
                Text("Étape non définie")
            }
            
            Spacer()
        }
    }
}


struct ContentViews_Previews: PreviewProvider {
    static var previews: some View {
        ContentViews()
    }
}
