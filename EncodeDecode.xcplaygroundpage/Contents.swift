//: [Previous](@previous)

import Foundation

let responseData = """
{
    "manufacturer": "Cessna",
    "model": "172 Skyhawk",
    "seats": 4
}
""".data(using: .utf8)!

struct Plane: Decodable {
    var manufacturer: String
    var model: String
    var seats: Int
}

let decoder = JSONDecoder()
let plane = try! decoder.decode(Plane.self, from: responseData)

print(plane)
//: [Next](@next)
