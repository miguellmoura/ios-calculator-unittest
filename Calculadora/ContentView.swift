//
//  ContentView.swift
//  Calculadora
//
//  Created by Mark Joselli on 06/05/25.
//

import SwiftUI

struct ContentView: View {
    @State private var number1: String = ""
    @State private var number2: String = ""
    @State private var result: Double?
    
    var resultText: String {
        if let result = result {
            return "Resultado: \(String(format: "%.2f", result))"
        } else {
            return "Entrada inválida"
        }
    }
    
    func sum(num1: Double?, num2: Double?) -> Double? {
        guard let num1 = num1, let num2 = num2 else { return nil }
        return num1 + num2
    }
    func subtract(num1: Double?, num2: Double?) -> Double? {
        guard let num1 = num1, let num2 = num2 else { return nil }
        return num1 - num2
    }
    func multiply(num1: Double?, num2: Double?) -> Double? {
        guard let num1 = num1, let num2 = num2 else { return nil }
        return num1 * num2
    }
    func divide(num1: Double?, num2: Double?) -> Double? {
        guard let num1 = num1, let num2 = num2, num2 != 0 else { return nil }
        return num1 / num2
    }
    
    func calculateResult(operation: (Double?, Double?) -> Double?) {
        let num1 = Double(number1)
        let num2 = Double(number2)
        result = operation(num1, num2)
    }

    var body: some View {
        VStack {
            Text("Calculadora")
                .font(.largeTitle)
                .padding(.bottom)
            NumberTextFieldView(title: "Numero 1", number: $number1)
                .padding(.bottom)
            NumberTextFieldView(title: "Numero 2", number: $number2)
                .padding(.bottom)
            
            HStack {
                OperationButton(title: "+") {
                    calculateResult(operation: sum)
                }
                OperationButton(title: "-") {
                    calculateResult(operation: subtract)
                }
                OperationButton(title: "*") {
                    calculateResult(operation: multiply)
                }
                OperationButton(title: "/") {
                    calculateResult(operation: divide)
                }
            }
            .padding(.bottom)
            Text(resultText)
                .font(.title2)
                .padding()
                .background(.yellow.opacity(0.20))
                .cornerRadius(10)
                .padding(.horizontal)
                
            

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
