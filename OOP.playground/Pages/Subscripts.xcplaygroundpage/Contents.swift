//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class Add {
    var addBy : Int
    
    subscript (addInto : Int) -> Int {
        get {
            return addBy + addInto
        }
    }
    
    init(addBy: Int) {
        self.addBy = addBy
    }
}

var num1 = Add(addBy: 5)
for i in 1...10 {
    print(num1[i])
}

//-----------------------------------------------

class Fruits {
    var ripeColor : String
    var rawColor : String
    var name : String
    
    subscript (type : String) -> String {
        get {
            switch type {
            case "ripeColor":
                return self.ripeColor
            case "rawColor":
                return self.rawColor
            default:
                return String()
            }
        }
        
        set {
            switch type{
                case "ripeColor":
                    self.ripeColor = newValue
                case "rawColor":
                    self.rawColor = newValue
                default:
                    print("Default")
                    
            }
        }
    }
    
    init(ripeColor: String, rawColor: String, name: String) {
        self.ripeColor = ripeColor
        self.rawColor = rawColor
        self.name = name
    }
}

var fruit1 = Fruits(ripeColor: "Yellow", rawColor: "Green", name: "Mango")
print(fruit1["ripeColor"])
fruit1["ripeColor"] = "Orange"
print(fruit1["ripeColor"])
