//: [Previous](@previous)

import Foundation




//
//let now = Date()
//let cycleRoute = Cycling(
//    startDate: now,
//    endDate: nil,
//    distance: 150,
//    type: CycleType.BMX
//)
//
//print(cycleRoute)

//if (cycleRoute.type == CycleType.BMX) {
//    // Soa
//} else if (cycleRoute.type == CycleType.Mountain) {
//    
//}

//switch cycleRoute.type {
//    case .BMX:
//    print("Soa")
//case .Route:
//    print("Route")
//case .Mountain:
//    print("Mountain")
//case .LearningBike:
//    print("Learning Bike")
//}
//
struct Run {
    var startDate: Date
    var endDate : Date?
    var distance: Int
    var isCompeting: Bool
}

struct Cycling {
    enum CycleType {
        case Mountain
        case Route
        case BMX
        case LearningBike
    }
    
    var startDate: Date
    var endDate : Date?
    var distance: Int
    var type: CycleType
}

struct Lifting {
    let date: Date
    let repetitions: Date
}

enum Workout {
    case run(Run)
    case cycling(Cycling)
    case lifting(Lifting)
}

//: [Next](@next)
