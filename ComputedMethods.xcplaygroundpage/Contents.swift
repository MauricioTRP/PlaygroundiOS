//: [Previous](@previous)

import Foundation

/*:
 # Title
 
 `codeExample`
 */

struct Run {
    var startTime: Date
    var endTime: Date? // -> por defecto nil
    var _privateRunnerName: String
    
   
    var elapsedTime: TimeInterval {
        return Date().timeIntervalSince(startTime)
    }
    
    var isFinished: Bool {
        get {
            return endTime != nil
        }
        
        set {
            if newValue {
                endTime = Date()
            } else {
                endTime = nil
            }
        }
    }
    
    var runnerName : String {
        get {
            return _privateRunnerName
        }
        set(newValue) {
            _privateRunnerName = newValue.uppercased()
        }
    }
    
    init(startTime: Date, runnerName: String) {
        self.startTime = startTime
        self.endTime = nil
        self._privateRunnerName = runnerName.uppercased()
    }
}

func suma(_ a: Int, _ b: Int) -> Int {
    return a + b
}

suma(1, 5)

var run = Run(startTime: Date(), runnerName: "Pepe")
print("Elapsed time: \(run.elapsedTime) seconds")

print(run.isFinished)
print(run.runnerName)

sleep(4)

run.runnerName = "Juan"

print(run.runnerName)

print("Elapsed time: \(run.elapsedTime) seconds")

run.isFinished = true
print("\(run.endTime!)")

print(run.isFinished)
//: [Next](@next)
