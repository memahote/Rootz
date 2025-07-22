//
//  AjouterAmisView.swift
//  RootZ
//
//  Created by Mounir on 22/07/2025.
// Vue d'ajout d'ami

//import SwiftUI
//
//struct AjouterAmiView: View {
//    @Environment(\.dismiss) var dismiss
//    @ObservedObject var viewModel: AmisViewModel
//    @State private var nomAmi = ""
//
//    var body: some View {
//        NavigationView {
//            VStack(spacing: 20) {
//                TextField("Nom de l’ami", text: $nomAmi)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .padding()
//
//                Button("Ajouter") {
//                    guard !nomAmi.isEmpty else { return }
//                    viewModel.ajouterAmi(nom: nomAmi)
//                    dismiss()
//                }
//                .foregroundColor(.white)
//                .padding()
//                .frame(maxWidth: .infinity)
//                .background(Color.blue)
//                .cornerRadius(12)
//
//                Spacer()
//            }
//            .navigationTitle("Ajouter un ami")
//            .padding()
//        }
//    }
//}
