//
//  ButtonComponent.swift
//  NumeroSecreto
//
//  Created by Izabella Julia dos Santos on 24/12/25.
//

import SwiftUI

struct ButtonComponent: View {
    let title: String
    let action: () -> Void


    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
        }
        .padding()
        .buttonStyle(.borderedProminent)
        .tint(.pink)

    }
}

#Preview {
    ButtonComponent(title: "Test", action: { })
}
