//: [Previous page](@previous) - [Next page](@next)

//: Basics

import UIKit

var greeting = "Hello, playground"
	
let myNum : String

let myAfirmacion: Bool = true

// operador unario

!myAfirmacion // false

// operadores compuestos

var myNum1: Int = 10

print(myNum1)
myNum1 += 1 //11
print(myNum1)
myNum1 *= 2 // 22
print(myNum1)
myNum1 /= 3 //
print(myNum1)
myNum1 = 22

print("myNum módulo 7 es: \(myNum1 % 7)")

// operador binario
let a = 7
let b = 4

let result = a + b

let result2 = a > b ? "a es mayor" : "b es mayor"

print(result)
print(result2)

let a_1 = Double(a)
let b_1 = Double(b)

print(a / b)
print(a_1 / b_1)

var refreshToken : String? // "token" || nil

// Operación asincrona para leer token
@MainActor
func leerTokenDelAlmacenamiento( ) {
    // exitosa
    refreshToken = "asdasdoiasuda.asdoiausdoaisd.asdasd"
}

leerTokenDelAlmacenamiento()

var updatedToken: String = refreshToken ?? "token"

// Arrays
// Indexado
var libros : [String] = ["1984", "Orgullo y prejuicio", "Viaje a lo hondo"]

print(libros[1])
libros.append("Recetas")
print(libros[1])

struct Book {
    var title: String
    var pages: Int
    var author: String
}

var books: [Book] = [
    Book(title: "1984", pages: 100, author: "Orwell"),
    Book(title: "Orgullo y prejuicio", pages: 560, author: "No se"),
    ]

// Sets
// "cuenta sólo representantes"
var setOfAuthors = Set(["Maturana", "Allende", "Allende", "Murakami"])

print(setOfAuthors)

// Tuples
let point : (Int, Int) = (1, 5)
let point2 : (Int, Int) = (3, 5)

print(point > point2)

struct XYPoint {
    var x: Int
    var y: Int
}

extension XYPoint: Hashable {
    static func == (lhs: XYPoint, rhs: XYPoint) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(x)
        hasher.combine(y)
    }
}

let x_1 : XYPoint = XYPoint(x: 1, y: 5)
let x_2 : XYPoint = XYPoint(x: 3, y: 5)

print(x_1 == x_2) // ==(x_1, x_2) -> Bool

var setOfPoints = Set([x_1, x_2])

//: [Next page](@next)
