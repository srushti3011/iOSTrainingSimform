//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

struct Student{
    var name : String
    var std : Int = 0
    
    mutating func setName(name : String) {
        self.name = name
    }
    
    func display() {
        print("\(self.name) \(self.std)")
    }
}



var student1 = Student(name: "Mally")
student1.display()
student1.setName(name: "Sally")
student1.display()

// ---------------------------------------------------------------

struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Point(x: x + deltaX, y: y + deltaY)
    }
    func display() {
        print(self.x, self.y)
    }
}

var pt1 = Point(x: 5.0, y: 6.0)
pt1.display()
pt1.moveBy(x: 2.5, y: 8.6)
pt1.display()
