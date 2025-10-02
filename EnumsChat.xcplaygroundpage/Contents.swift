//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/**
 Tipos de mensaje
  -> Se unió al chat
        - id
        - fecha/hora
  -> Salió del chat
        - id
        - fecha/hora
  -> Texto
        - id
        - fecha/hora
        - text
  -> Unico Sticker de Gato
        - id
        - fecha/hora
        - bool (sticker)
 */
//
//struct Message {
//    let id: String
//    let date: Date
//    let text: String?
//    let isSticker: Bool?
//}
//
//let joinMessage: Message = .init(
//    id: "12345",
//    date: Date(),
//    text: nil,
//    isSticker: nil
//)
//
//let leaveMessage = Message(
//    id: "12345",
//    date: Date(),
//    text: nil,
//    isSticker: nil
//    )
//
//let textMessage = Message(
//    id: "12345",
//    date: Date(),
//    text: "Hola mundo",
//    isSticker: nil
//)
//
//let invalidMessage = Message(
//    id: "123",
//    date: Date(),
//    text: "HOla",
//    isSticker: true
//)

typealias UserId = String
typealias UserMessage = String

enum Message {
    case join(date: Date, id: UserId)
    case text(date: Date, id: UserId, text: UserMessage)
    case leave(date: Date, id: UserId)
    case sticker(date: Date, id: UserId)
}

let leaveMessage: Message = .leave(date: Date(), id: "12345")
let joinMessage = Message.join(date: Date(), id: "12345")
let textMessage: Message = .text(date: Date(), id: "12345", text: "Hola mundo")
let stickerMessage : Message = .sticker(date: Date(), id: "9098098")

func printMessage(_ message: Message) {
    switch message {
    case .join(date: let date, id: let userId):
        print("User id: \(userId) has joined at date: \(date)")
    case .leave(date: let date, id: let userId):
        print("User id: \(userId) has leaved at date: \(date)")
    case .sticker(date: let date, id: let userId):
        print("Sticker de gato")
    case .text(date: let date, id: let userId, text: let message):
        print("User \(userId) says: \(message)")
    }
}

printMessage(leaveMessage)
printMessage(joinMessage)
printMessage(textMessage)
printMessage(stickerMessage)
