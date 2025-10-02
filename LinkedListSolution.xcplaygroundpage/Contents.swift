//: [Previous](@previous)

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

var l1 = ListNode(3, nil)
var _l1D = ListNode(5, nil)
var _l1C = ListNode(1, nil)
l1.next = _l1D
l1.next!.next = _l1C




struct Point {
    var x: Int
    var y: Int
}

func sumaAlternativa(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func sumaAlternativa(_ a: Point, _ b: Point) -> Point {
    return Point(x: a.x + b.x, y: a.y + b.y)
}


var a = 1
var b = 2

print(sumaAlternativa(a, b))

var pointA = Point(x: 3, y: 5)
var pointB = Point(x: -3, y: 4)

print(sumaAlternativa(pointA, pointB))

//: [Next](@next)
