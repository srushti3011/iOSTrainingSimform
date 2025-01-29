import Cocoa


//syntax

//protocol protocolName: Superclass, Protocol1, Protocol2 {
//
//}

// normal example
protocol PersonProtocol {
    var age: Int { get }
    func display() -> Void
}

struct Person: PersonProtocol {
    var name: String
    var age: Int
    
    func display() {
        print(self.name, self.age)
    }
}

var personOne = Person(name: "P1", age: 20)
personOne.display()

// init implementation

protocol InitConform {
    init(name: String)
}

class ImplementInit: InitConform {
    var name: String
    required init(name: String) {
        self.name = name
    }
}

//protocol conformance with extension

class Student {
    var name: String
    var std: Int
    init(name: String, std: Int) {
        self.name = name
        self.std = std
    }
}

protocol Marks {
    func displayMarks()
}

extension Student: Marks {
    func displayMarks() {
        print("Marks display")
    }
}

var studentOne = Student(name: "stu1", std: 9)
studentOne.displayMarks()

//conditionally conforming to a protocol

//default implementations of functions

protocol ExampleProtocol {
    func display() -> Void
    func start() -> Void
}

extension ExampleProtocol {
    func display() {
        print("display")
    }
    func start() {
        print("start")
    }
}

class ExampleClass: ExampleProtocol {
    
}
var egC1 = ExampleClass()
egC1.display()

//protocol Equatable {
//    static func ==(lhs: Self, rhs: Self) -> Bool
//}
//class Points: Equatable {
//    var x: Int
//    var y: Int
//    init(x: Int, y: Int) {
//        self.x = x
//        self.y = y
//    }
////    static func ==(lhs: Points, rhs: Points) -> Bool {
////        return true
////    }
//}
//
//var p1 = Points(x: 5, y: 8)
//var p2 = Points(x: 5, y: 8)
//print(p1 == p2)

//collection of protocol types

protocol Displayable {
    func display() -> Void
}

class Circle: Displayable {
    func display() {
        print("Displaying Circle")
    }
}
class Square: Displayable {
    func display() {
        print("Displaying Square")
    }
}

var arrOfDisplayable: [Displayable] = [Circle(), Square()]
for i in arrOfDisplayable {
    i.display()
} //array of elements of types that conform to protocol; here elements of Circle and Square that conform to Displayable

//protocol inheritance

protocol ClassOnly: AnyObject {
    func view() -> Void
} // only a class can conform to it, not structs and enums

//class Use: ClassOnly {
//    func view() {
//        
//    }
//}


//Protocol composition

protocol Country {
    var countryName: String { get }
}
protocol Age {
    var age: Int { get }
}

class Person1: Country, Age {
    var countryName: String
    var age: Int
    
    init(name: String, age: Int) {
        self.countryName = name
        self.age = age
    }
}

func checkVehicleRiding(person: Country & Age) {
    if(person.age>18 && person.countryName=="India") {
        print("Allowed")
    }
}

var personOne1 = Person1(name: "India", age: 30)
checkVehicleRiding(person: personOne1)

// checking conformance to a protocol

protocol Prot {
    var m: Int { get }
}

class ImpProt: Prot {
    var m = 5
}

class ImpProt1: Prot {
    var m = 10
}

var instOne = ImpProt()

if instOne is Prot {
    print("yes")
}

//optional protocols members

@objc protocol OptionalProt {
    @objc optional func func1()
    func func2()
}

class Imple: OptionalProt {
    
    func func1() {
        print("func1")
    }
    
    func func2() {
        print("func2")
    }
}

var optionalOne = Imple()
optionalOne.func2()

protocol Doable {
    func display()
    func displayAll()
}

extension Doable {
    func display() {
        print("display method")
    }
    func displayAll() {
        print("display all method")
    }
}

class Do: Doable {
    init() {
        self.display()
        self.displayAll()
    }
    func display() {
        print("custom display method")
    }
    func displayAll() {
        print("custom display all method")
    }
}

var doOne = Do()

class DoChild: Do {
    override init() {
        super.init()
    }
    override func display() {
        print("overridden display")
    }
    override func displayAll() {
        print("overridden display all method")
    }
} // if the default implementation is only used in the Do class and we try to override those methods in DoChild, we get the error that no such method in Do's body
//if we want to override the method in DoChild you compulsorily have to define method in Do class as well

var doChild = DoChild()

// types conforming to Equatable, Hashable, Comparable protocols
