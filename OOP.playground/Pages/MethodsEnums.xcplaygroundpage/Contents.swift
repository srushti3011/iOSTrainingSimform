//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

enum FruitsAndColor : String {
    case apple = "red"
    case mango = "yellow"
    case grape = "green"
    
    func printColor() {
        print("The color is \(self.rawValue)")
    }
    
    func identifyFruit() {
        switch self {
        case .apple:
            print("Apple")
        case .mango:
            print("Mango")
        case .grape:
            print("Grape")
        }
    }
}

var fruit1 = FruitsAndColor.apple
fruit1.printColor()
fruit1.identifyFruit()
