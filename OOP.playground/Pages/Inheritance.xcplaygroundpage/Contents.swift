//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class Animal {
    var legs: Int
    var noiseLevel: String
    
    init(legs: Int, noise: String) {
        self.legs = legs
        self.noiseLevel = noise
    }
    
    func display(){
        print("\(self.legs) \(self.noiseLevel)")
    }
}

class Dog: Animal {
    var action: String
    override var noiseLevel: String {
        get {
            return "The noise level is \(super.noiseLevel)"
        }
        set {
            super.noiseLevel = newValue
        }
    }
    init(action: String, Legs: Int, Noise: String) {
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

//-----------------------------------------------------------------

// difference between static, class and final keywords
// methods and

class Super {
    class func classMethod() {
        print("classMethod of Super")
    }
    
    static func staticMethod() {
        print("staticMethod of Super")
    }
    
    final func display() {
        print("Display of Super")
    }
}

class Sub: Super {
    override class func classMethod() {
        print("classMethod of Sub")
    } // possible as class methods can be overridden
    
//    override func staticMethod() {
//        print("staticMethod of Super")
//    } not possible as staticMethod is static in Super
    
//    override func display() {
//        print("Display of Super")    
//    } not possible as display is final in Super
}

Sub.classMethod()
Super.classMethod()
var sub1 = Sub()
sub1.display()
Sub.staticMethod()
//sub1.clasMethod() not possible because class methods and
//properties can be accessed using ClassName.method() or
//ClassName.property only (they are not instance properties or methods)

//----------------------------------------------------------------------

//ineritance with access modifiers
// default access modifier is internal
class Parent {
    private var num1: Int
    final var num2: Int
    init(num1: Int, num2 : Int) {
        self.num1 = num1
        self.num2 = num2
    }
    
    fileprivate func display() {
        print(self.num1)
    }
}

class Child: Parent {
    init() {
        super.init(num1: 40, num2: 50)
    }
    
    override public func display() {
        print("Changed the access modifier")
    }
}

var ch1 = Child()
ch1.display()

// overriding subscripts

class Square {
    var num1: Int
    subscript (num : Int) -> Int {
        get {
            return num*num
        }
    }
    init(num1: Int) {
        self.num1 = num1
    }
}

class Cube: Square {
    override subscript(num: Int) -> Int {
            return super[num]*num
    }
    init(num: Int) {
        super.init(num1: num)
    }
}

var cubeOfFive = Cube(num : 5)
print(cubeOfFive[cubeOfFive.num1])

//initializer not accessible

// overriding properties

class SuperClass {
//    private(set) var a : //mutable
    var baseNumber: Int
    var number: Int {
        get {
            return self.baseNumber*self.baseNumber
        }
        set {
            self.baseNumber = 0
        }
    }
    
    init(baseNumber: Int) {
        self.baseNumber = baseNumber
    }
}

class SubClass: SuperClass {
    var newNum: Int
    override var baseNumber: Int {
        get {
            return 1
        }
        set {
            self.newNum = 0
        }
    }
    
    init(newNum: Int) {
        self.newNum = newNum
        super.init(baseNumber: 6)
    }
}

var child = SubClass(newNum: 5)
print(child.baseNumber)

class Test {
    private final var m = 5
    func displayM() {
        print(self.m)
    }
}
var tOne = Test()
tOne.displayM()
