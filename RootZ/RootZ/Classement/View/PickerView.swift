//
//  PickerView.swift
//  RootZ
//
//  Created by Mounir on 23/07/2025.
//

import SwiftUI

struct PickerView: View {
    @State private var selectedOption = "Amis"

    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(named: "CouleurAccent")
    }

    var body: some View {
            Picker("Classement", selection: $selectedOption) {
                Text("Amis").tag("Amis")
                Text("Monde").tag("Monde")
            }
            .tint(.orange)
            .pickerStyle(.segmented)
            
            .padding()
        }
    }

#Preview {
    PickerView()
}
