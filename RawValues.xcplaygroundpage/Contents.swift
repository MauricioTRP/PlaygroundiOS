//: [Previous](@previous)

import Foundation

enum Divisas: String {
    case clp = "clpaosdi"
    case euro = "euro"
    case dolar = "dolar"
}

let monedas: [Divisas] = [.clp, .euro, .dolar]

//print(monedas[0])
//
//print(type(of: monedas[0]))
//
//print(monedas[0].rawValue)
//print(type(of:  monedas[0].rawValue))

let monedasString: [String] = monedas.map(\.rawValue)

enum Currency: String {
    case clp
    case euro
    case dolar
}

let currencies: [Currency] = [.clp, .euro, .dolar]

print(currencies[0].rawValue)

let currenciesString: [String] = currencies.map(\.rawValue)

//print(monedasString)

//: [Next](@next)
