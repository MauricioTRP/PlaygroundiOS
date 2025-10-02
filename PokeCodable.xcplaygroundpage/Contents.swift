//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

struct Pokemon : Codable {
    let name: String
    let order: Int
    let locationAreaEncounters: String?
    let cries: Cries?
    
    struct Cries : Codable {
        let latest: String?
        let legacy: String?
    }
}

struct PokemonList : Codable {
    let count: Int
    let results: [Result]
    
    struct Result : Codable {
        let name: String
        let url: String
    }
}

/*:
 # Generics
 */

func load<TipoDesconocido: Codable>( filename: String) -> TipoDesconocido {
    var data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("No pudimos encontrar \(filename)")
    }
    
    print(file)
    
    do {
        data = try Data(contentsOf: file)
        
        print(data)
    } catch {
        fatalError("No pudimos leer \(filename), error: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        return try decoder.decode(TipoDesconocido.self, from: data)
    } catch {
        fatalError("No pudimos parsear \(filename), error: \n\(error)")
    }
}

func writeToFile<T: Codable>(element: T, filename: String) -> Void {
    let encoder = JSONEncoder()
    var data: Data
    var filename = FileManager.default.currentDirectoryPath
    
    encoder.keyEncodingStrategy = .convertToSnakeCase
    
    do {
        data = try encoder.encode(element)
    } catch {
        fatalError("No pudimos codificar \(T.self), error: \n\(error)")
    }
    
    do {
        try data.write(to: URL(filePath:"~/"+filename+".json"))
    } catch {
        fatalError("No pudimos escribir el json, error\n\(error)")
    }
}

let pokemon: PokemonList = load(filename: "pokemon.json")
//
//print(FileManager.default.currentDirectoryPath)

print(pokemon)



//writeToFile(element: pokemon, filename: "miPokemon")

//: [Next](@next)
