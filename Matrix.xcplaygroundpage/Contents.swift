//: [Previous](@previous)

import Foundation

struct Matrix {
    let rows: Int
    let cols: Int
    var grid: [Double]
    
    func isIndexValid(row: Int, col: Int) -> Bool {
        return row > 0 && col > 0 && row <= rows && col <= cols
    }
    
    init(rows: Int, cols: Int) {
        self.cols = cols
        self.rows = rows
        grid = Array(repeating: 0.0, count: rows * cols)
    }
    
    subscript(row: Int, col: Int) -> Double {
        get {
            assert(isIndexValid(row: row, col: col), "Index doesn't belong to matrix can't write")
            return grid[row * cols + col]
        }
        set {
            assert(isIndexValid(row: row, col: col), "Index doesn't belong to matrix couldn't read")
            grid[row * cols + col] = newValue
        }
    }
    
    func printMatrix() {
        for row in 0..<rows {
            for column in 0..<cols {
                print(self[row, column], terminator: " ")
            }
            print()
        }
        print("end of matrix")
    }
}

var matrix2x2: Matrix = .init(rows: 2, cols: 3)

matrix2x2.printMatrix()

matrix2x2[0, 0] = 1

matrix2x2.printMatrix()

matrix2x2[3,3] = 1

matrix2x2.printMatrix()

//: [Next](@next)
