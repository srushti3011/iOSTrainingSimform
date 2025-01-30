import Cocoa
import Foundation
//Classes

//1

final class FirstClass {
    var varOne: Int
    var varTwo: Int

    init(varOne: Int, varTwo: Int) {
        self.varOne = varOne
        self.varTwo = varTwo
    } //initialising the values of variables

    // getting the values
    func getVarOne() -> Int {
        return self.varOne
    }
    
    func getVarTwo() -> Int {
        return self.varTwo
    }
    
    // setting the values
    func setValues(newVarOne: Int, newVarTwo: Int) {
        self.varOne = newVarOne
        self.varTwo = newVarTwo
    }
}

var instanceOne = FirstClass(varOne: 5, varTwo: 6)
print(instanceOne.getVarOne(), instanceOne.getVarTwo())
instanceOne.setValues(newVarOne: 10, newVarTwo: 11)
print(instanceOne.getVarOne(), instanceOne.getVarTwo())

// 2

final class Student {
    var name: String
    var college: String
    var department: String
    
    init(name: String, college: String) {
        self.name = name
        self.college = college
        self.department = "Computer"
    }
    
    init(name: String, department: String) {
        self.name = name
        self.college = "BVM"
        self.department = department
    }
}

let studentOne = Student(name: "Mally", college: "DDU")
let studentTwo = Student(name: "Sally", department: "Computer")
print(studentOne.name, studentOne.college, studentOne.department)
print(studentTwo.name, studentTwo.college, studentTwo.department)

// 3

final class ClassWithoutInitializer {
    var varOne: Int = 5
    var varTwo: Int = 6
}

var noInitializerInstanceOne = ClassWithoutInitializer()
print(noInitializerInstanceOne.varOne)
print(noInitializerInstanceOne.varTwo)

// 4
class NumOperations {
    func squareTheNumber(num: Int) -> Int {
        return num*num
    }
}

var numOperation = NumOperations()
print(numOperation.squareTheNumber(num: 10))

// 5

class Base {
    var baseProp: Int
    
    init(baseProp: Int) {
        self.baseProp = baseProp
    }
}

class ChildOne: Base {
    init(basePropVal: Int) {
        super.init(baseProp: basePropVal)
    }
    func display() {
        print(self.baseProp)
    }
}

class ChildTwo: Base {
    init(basePropVal: Int) {
        super.init(baseProp: basePropVal)
    }
    func display() {
        print(self.baseProp)
    }
}

var childOne = ChildOne(basePropVal: 5)
childOne.display()

var childTwo = ChildTwo(basePropVal: 20)
childTwo.display()

print(childOne.baseProp, childTwo.baseProp)

// 6

class Animal {
    func namePrint(name: String) {
        print("hello i am \(name)")
    }
}

class Dog: Animal {
    override func namePrint(name: String) {
        super.namePrint(name: name)
        print("I am a pet")
    }
}

var dogOne: Dog = Dog()
dogOne.namePrint(name: "Dog")

// 7

class PerformSquare {
    var num: Int
    
    init(num: Int) {
        self.num = num
    }
    
    func doPower(exp: Int) -> Int {
        return Int(pow(Double(self.num), Double(exp)))
    }
}

var numOne = PerformSquare(num: 5)
var answer = numOne.doPower(exp: 3)
print(answer)

// 8

class Vehicle {
    var numOfWheels: Int
    var mileage: Int
    var weight: Int
    
    init(numOfWheels: Int, mileage: Int, weight: Int) {
        self.numOfWheels = numOfWheels
        self.mileage = mileage
        self.weight = weight
    }
}

class Bike: Vehicle {
    var gearPresence: Bool
    
    init(numWheels: Int, mil: Int, wt: Int, gearPresence: Bool) {
        self.gearPresence = gearPresence
        super.init(numOfWheels: numWheels, mileage: mil, weight: wt)
    }
}

class Car: Vehicle {
    var airConditioningLevel: String

    init(numWheels: Int, mil: Int, wt: Int, airConditioningLevel: String) {
        self.airConditioningLevel = airConditioningLevel
        super.init(numOfWheels: numWheels, mileage: mil, weight: wt)
    }
}

var bikeOne = Bike(numWheels: 2, mil: 20, wt: 103, gearPresence: false)
var carOne = Car(numWheels: 4, mil: 15, wt: 700, airConditioningLevel: "high")

// 9

final class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
    func greet() {
        print("Hello \(self.name)")
    }
}

let personOne = Person(name: "Joe")
personOne.greet()

// 10

class Example {
    var a: String = "Default Value"
}
let example1 = Example()
example1.a = "Hello"
let example2 = example1
example2.a = "Hi"
print(example1.a)
print(example2.a)
// such output due to classes being reference types
