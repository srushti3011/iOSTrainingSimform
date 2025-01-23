//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class Animal {
    var legs : Int
    var noiseLevel : String
    
    init(legs: Int, noise: String) {
        self.legs = legs
        self.noiseLevel = noise
    }
    
    func display(){
        print("\(self.legs) \(self.noiseLevel)")
    }
}

class Dog : Animal {
    var action : String
    override var noiseLevel: String {
        get {
            return "The noise level is \(super.noiseLevel)"
        }
        set {
            super.noiseLevel = newValue
        }
    }
    init(action: String, Legs : Int, Noise : String) {
        self.action = action
        super.init(legs: Legs, noise: Noise)
    }
    
    override func display() {
//        super.display()
        print("\(self.legs) \(self.noiseLevel) \(self.action)")
    }
}

var dog1 = Dog(action: "Bark", Legs: 4, Noise: "medium")
dog1.display()
dog1.noiseLevel = "High"
dog1.display()
