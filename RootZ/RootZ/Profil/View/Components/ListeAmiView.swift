//
//  ListeAmiView.swift
//  RootZ
//
//  Created by Mounir on 22/07/2025.
// Vue de la liste d'ami 

import SwiftUI

struct ListeAmisView: View {
    @State var viewModel: AmisViewModel
    @Environment(\.dismiss) var dismiss
    @State private var nomNouveauAmi: String = ""
    @State private var animate = false
    @Bindable   var appViewModel: AppViewModel


    var body: some View {
        NavigationView {
            ZStack {
                Color(appViewModel.selectedCulture.backgroundColor)
                    .ignoresSafeArea()

                VStack(spacing: 20) {
                    // Carte pour l'ajout d'ami
                    VStack(spacing: 12) {
                        Text("Ajouter un ami")
                            .font(.headline)
                            .foregroundColor(.primary)

                        HStack {
                            TextField("Nom d’un nouvel ami", text: $nomNouveauAmi)
                                .textFieldStyle(RoundedBorderTextFieldStyle())

                            Button(action: {
                                viewModel.ajouterAmi(nom: nomNouveauAmi)
                                nomNouveauAmi = ""
                            }) {
                                Image(systemName: "plus.circle.fill")
                                    .font(.title2)
                                    .foregroundColor(Color(.white))
                            }
                            .disabled(nomNouveauAmi.isEmpty)
                        }
                    }
                    .padding()
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                    .padding(.horizontal)
                    .shadow(radius: 8)
                    .scaleEffect(animate ? 1 : 0.95)
                    .opacity(animate ? 1 : 0)
                    .onAppear {
                        withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) {
                            animate = true
                        }
                    }

                    // 📋 Liste des amis
                    List {
                        ForEach(viewModel.amis, id: \.self) { ami in
                            HStack {
                                Circle()
                                    .fill(Color.blue.opacity(0.7))
                                    .frame(width: 30, height: 30)
                                    .overlay(Text(String(ami.prefix(1)).uppercased()).foregroundColor(.white))

                                Text(ami)
                                    .font(.body)
                                    .foregroundColor(.primary)
                            }
                            .padding(.vertical, 4)
                            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                                Button(role: .destructive) {
                                    viewModel.supprimerAmi(nom: ami)
                                } label: {
                                    Label("Supprimer", systemImage: "trash")
                                }
                            }
                        }
                    }
                    .listStyle(.insetGrouped)
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .shadow(radius: 3)

                    Spacer()
                }
                .navigationTitle("Mes amis")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Fermer") {
                            dismiss()
                        }
                        .foregroundColor(.white)
                    }
                }
            }
        }
    }
}
