//
//  NumeroSecretoViewModel.swift
//  NumeroSecreto
//
//  Created by Izabella Julia dos Santos on 23/12/25.
//

import Foundation
import SwiftUI

@MainActor
class NumeroSecretoViewModel: ObservableObject {

    // MARK: - Propriedades

    private var numeroSecreto: Int
    @Published var acertou: Bool = false
    @Published var dica: String = ""
    @Published var tentativas: Int = 1
    @Published var chute: String = ""


    // MARK: - Inicialização

    init() {
        self.numeroSecreto = Int.random(in: 1...10)
    }

    // MARK: - Funções públicas
    
    func verificarChute() {
        guard let valorChute = Int(chute) else {
            dica = "Por favor, digite um número válido"
            return
        }

        if valorChute == numeroSecreto {
            acertou = true
        } else {
            tentativas += 1
            calcularDica(para: valorChute)
            chute = ""
        }
    }

    func reiniciar() {
        acertou = false
        chute = ""
        dica = ""
        tentativas = 1
        numeroSecreto = Int.random(in: 1...10)
    }

    // MARK: - Funções privadas

    private func calcularDica(para valor: Int) {
        dica = valor < numeroSecreto ? "O número secreto é MAIOR" : "O número secreto é MENOR"
    }

}
