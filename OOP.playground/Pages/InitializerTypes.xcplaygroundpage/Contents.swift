//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class Person {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
    
//    init(name: String) {
//        self.name = name
//    } //designated initializer
    
    convenience init() {
        self.init(name: "convenience")
    } //convenience init
}

var personOne = Person()
print(personOne.name)

class Employee: Person {
    var age: Int
    
    required init(name: String) {
        self.age = 5
        super.init(name: name)
    }
    
    init(age: Int) {
        self.age = age
        super.init(name: "NameGiven")
    }
}

//var emp1 = Employee(name: "namegiven")
var emp1 = Employee(age: 10)
print(emp1.age, emp1.name)

//----------------------------------------------

//failable initializers

class Bank {
    var balance: Int
    
    init?(balance: Int) {
        if(balance<0) {
            print("cant initialize")
            return nil
        }
        self.balance = balance
    }
}

var bal1 = Bank(balance: 20)
print(bal1)

//----------------------------------------------

// Lazy Initializer

class LazyInitializer {
    lazy var stringToPrint = lazyInitialize()
    var unLazyProp : Int
    
    init(unLazyProp: Int) {
        self.unLazyProp = unLazyProp
    }
    
    func lazyInitialize () -> String {
        return "Initialized lazily"
    }
    
}

var member1 = LazyInitializer(unLazyProp: 4)
print(member1.unLazyProp)
print(member1.stringToPrint)
