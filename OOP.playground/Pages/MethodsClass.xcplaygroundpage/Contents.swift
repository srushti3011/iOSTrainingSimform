//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class Point {
    var x : Int
    var y : Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func incX() {
        self.x+=1
    }
    
    func incY() {
        self.y+=1
    }
    
    func display(){
        print("x = \(self.x) y = \(self.y)")
    }
    
    func addPoints(pt : Point){
        self.x+=pt.x
        self.y+=pt.y
    }
}

var point1 = Point(x: 5, y: 10)
var point2 = Point(x: 20, y: 30)

point1.display()
point2.display()

point1.addPoints(pt: point2)
point1.display()

// self is used to refer to the current instance i.e. the object that has called the method

// methods in enums and structs can't modify the value of stored properties, to do it we have to make the method mutating


