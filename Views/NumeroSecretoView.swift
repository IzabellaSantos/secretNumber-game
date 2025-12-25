//
//  NumeroSecretoView.swift
//  NumeroSecreto
//
//  Created by Izabella Julia dos Santos on 23/12/25.
//

import SwiftUI

struct NumeroSecretoView: View {
    @StateObject private var viewModel = NumeroSecretoViewModel()

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                InputComponent(chute: $viewModel.chute)

                ButtonComponent(title: "Verificar") {
                    viewModel.verificarChute()
                }

                Text(viewModel.dica)
            }
            .padding()
            .navigationTitle("Número secreto!")
            .navigationDestination(isPresented: $viewModel.acertou) {
                AcertouView()
            }
        }
        .environmentObject(viewModel)
    }
}

#Preview {
    NumeroSecretoView()
}
