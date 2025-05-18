import XCTest
@testable import Calculadora

final class CalculadoraTests: XCTestCase {

    // soma
    func testSomarDoisNumerosPositivos() {
        let resultado = ContentView().sum(num1: 5, num2: 3)
        XCTAssertEqual(resultado, 8)
    }

    func testSomarComNil() {
        let resultado = ContentView().sum(num1: nil, num2: 5)
        XCTAssertNil(resultado)
    }

    func testSomarComAmbosNil() {
        let resultado = ContentView().sum(num1: nil, num2: nil)
        XCTAssertNil(resultado)
    }

    // subtração
    func testSubtrairDoisNumeros() {
        let resultado = ContentView().subtract(num1: 10, num2: 4)
        XCTAssertEqual(resultado, 6)
    }

    func testSubtrairComNil() {
        let resultado = ContentView().subtract(num1: 10, num2: nil)
        XCTAssertNil(resultado)
    }

    func testSubtrairComAmbosNil() {
        let resultado = ContentView().subtract(num1: nil, num2: nil)
        XCTAssertNil(resultado)
    }

    // multiplicação
    func testMultiplicarDoisNumeros() {
        let resultado = ContentView().multiply(num1: 6, num2: 7)
        XCTAssertEqual(resultado, 42)
    }

    func testMultiplicarComNil() {
        let resultado = ContentView().multiply(num1: nil, num2: 2)
        XCTAssertNil(resultado)
    }

    func testMultiplicarComAmbosNil() {
        let resultado = ContentView().multiply(num1: nil, num2: nil)
        XCTAssertNil(resultado)
    }
    
    // divisão
    func testDividirDoisNumeros() {
        let resultado = ContentView().divide(num1: 10, num2: 2)
        XCTAssertEqual(resultado, 5)
    }

    func testDividirPorZero() {
        let resultado = ContentView().divide(num1: 10, num2: 0)
        XCTAssertNil(resultado)
    }

    func testDividirComNil() {
        let resultado = ContentView().divide(num1: 10, num2: nil)
        XCTAssertNil(resultado)
    }
}
