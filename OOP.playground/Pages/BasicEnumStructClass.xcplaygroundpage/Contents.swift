//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

: [Previous](@previous)
import Foundation
//: [Next](@next)

enum Colors {
    case Red, White, Green, Blue
}
var c = Colors.Red //initial assignment uses enum name as well
print(c)
c = .Blue //shorthand assignment
print(c)

 matching enums to switch statements

switch c {
case .Red:
    print("Red color")

case .White:
    print("White color")

case .Green:
    print("Green color")

default:
    print("Some other color")
case .Blue:
    print("Blue color")
}
// swtich should be exhaustive
// else use default to bypass exhaustiveness

enum Numbers : CaseIterable {
    case one, two, three, four
}
//print(Numbers.allCases.count)
//
for i in Numbers.allCases {
    print(i)
}
//
var d = Colors.White
print(c, d)

enums with associated values


enum FruitColors{
    case Apple(String)
    case Mango(String)
}

var fruit = FruitColors.Apple("Red")
var fruit2
swich for associated vales
var value = ""
switch fruit{
case .Mango(let color):
    print("Mango has \(color) color")
case .Apple(let color):
    print("Apple has \(color) color")
    value+=color

}

enum Nums : CaseIterable {
    case 1,2,3
}
print(nums.allCases)

enum even : Int {
    case two = 8
    case four
}
var m = even.two
print(m.rawValue)
var n = even.two
print(n.rawValue)

enum odd {
    case one(Int)
    case three(Int)
}
var o = odd.one(1)

var p = odd.one(11)

switch o{
case .one(let str):
    print("Value is \(str)")

case .three(let str):
    print("Value is \(str)")
}

switch p{
case .one(let str):
    print("Value is \(str)")

case .three(let str):
    print("Value is \(str)")
}

enum nums {
    case one = 9,two,three
}

enum add {
    case num(Int)
    case numPlusNum(Int, Int)
}

//for the expression 5+6+7
var num1 = 5; var num2 = 6; var num3 = 7
var leftAns = add.numPlusNum(num1, num2)
var lAns : Int = 0

switch leftAns {
case .num(let num):
    print("num is \(num)")
case .numPlusNum(let num1, let num2):
    print("leftAns is \(num1+num2)")
    lAns=num1+num2
}

var finalAns = add.numPlusNum(lAns, num3)
switch finalAns {
case .num(let num):
    print("num is \(num)")
case .numPlusNum(let num1, let num2):
    print("finalAns is \(num1+num2)")
}


recursive enumerations
enum add {
    case num(Int)
    indirect case numPlusNum(add, add)
}

// Create the individual numbers
let num5 = add.num(5)
let num7 = add.num(7)
let num10 = add.num(10)

// Combine 5 + 7 = 12
let sum5And7 = add.numPlusNum(num5, num7)

// Combine (5 + 7) + 10 = 22
let finalSum = add.numPlusNum(sum5And7, num10)

// A function to calculate the total sum of the nested enum cases
func calculateSum(_ value: add) -> Int {
    switch value {
    case .num(let number):
        return number
    case .numPlusNum(let left, let right):
        return calculateSum(left) + calculateSum(right)
    }
}

// Print the final result
let result = calculateSum(finalSum)
print("Result: \(result)")  // Prints: Result: 22

struct and class
struct Coord {
    var x = 0
    var y = 0
}
class Plane {
    var coord = Coord()
    var length = 0
    var width = 0

    init(coord: Coord = Coord(), length: Int = 0, width: Int = 0) {
        self.coord = coord
        self.length = length
        self.width = width
    }
}

let co1 = Coord(x : 5, y : 6)
let pl1 = Plane(coord : co1, length : 10, width : 20)
print(pl1.coord.x, pl1.coord.y, pl1.length, pl1.width)
let pl2 = pl1
pl2.coord.x = 22 //even if coord is struct instance and structs are value types, changes are made in both
print(pl1.coord.x, pl1.coord.y, pl1.length, pl1.width)

struct Student {
    var num = 1
    var name = "ABCDE"
}
let stu1 = Student()
print(stu1.name , stu1.num)

stu1.name = "Modifiedname"
print(stu1.name)
can't modify because stu1 is let

Computed Properties (has getters and setters)

struct Area {
    var width = 0
    var length = 0
    var area : Int {
        return width * length
    }
}

var ar1 = Area(width : 5, length : 6)
print(ar1.area)




//imp
class MyClass {
    var value = 42
    var closure: (() -> Void)?

    func setupClosure() {
        closure = { [unowned self] in
            if let s = self {

                print(s.value)
            }
            else{
                print("h")
            }
        }
    }
}

var obj: MyClass? = MyClass()
obj?.setupClosure()

var m = obj?.closure  // Prints: 42
obj = nil  // Now the MyClass instance is deallocated
m?()



var m = [1,2,5,3]
m.sorted(by:>)

struct Coord{
    var x = 0
    var y =
}
