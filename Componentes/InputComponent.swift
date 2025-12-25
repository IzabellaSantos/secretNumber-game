//
//  InputComponent.swift
//  NumeroSecreto
//
//  Created by Izabella Julia dos Santos on 24/12/25.
//

import SwiftUI

struct InputComponent: View {
    @Binding var chute: String
    
    var body: some View {

        VStack (alignment: .leading) {
            Text("Digite um número:")
                .font(.subheadline)
                .bold()
                .foregroundStyle(.pink)

            TextField("", text: $chute)
                .keyboardType(.numberPad)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.pink, lineWidth: 1)
                )
        }
    }
}

#Preview {
    InputComponent(chute: .constant(""))
}
