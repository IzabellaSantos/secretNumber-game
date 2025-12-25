//
//  AcertouView.swift
//  NumeroSecreto
//
//  Created by Izabella Julia dos Santos on 24/12/25.
//

import SwiftUI

struct AcertouView: View {
    @EnvironmentObject var viewModel: NumeroSecretoViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("Acertou!")
                .font(.largeTitle)
                .foregroundColor(.pink)
                .padding()

            Text("Foram necessárias \(viewModel.tentativas) tentativa(s)")

            ButtonComponent(title: "Jogar Novamente") {
                viewModel.reiniciar()
            }

        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
   AcertouView()
        .environmentObject(NumeroSecretoViewModel())
}
