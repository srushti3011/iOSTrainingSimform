//: [Previous](@previous)

import Foundation

//: [Next](@next)

// Structures

// 1

struct Work {
    var workLocation: String
    var workHours: Int
    var projects: [String]
    
    func getProjects() -> [String] {
        return self.projects
    }
}

var workOne = Work(workLocation: "Ahmedabad", workHours: 8, projects: ["Project1", "Project2", "Project3"])
print(workOne.getProjects())

// 2

struct StructInit {
    var varOne: Int
    var varTwo : String
    
    init(varOne: Int, varTwo: String) {
        self.varOne = varOne
        self.varTwo = varTwo
    } // self written init
}

var structInitOne = StructInit(varOne: 5, varTwo: "hello")

// 3

struct InitWithWithoutParams {
    var num1: Int
    var num2: Int
    
    init() {
        self.num1 = 10
        self.num2 = 15
    }
    
    init(num1: Int, num2: Int) {
        self.num1 = num1
        self.num2 = num2
    }
}

var first = InitWithWithoutParams()
print(first.num1, first.num2)

// 4

struct SeparateEvenOdds {
    var nums : [Int]
    
    func separateOddEven() -> (even: [Int], odd: [Int]) {
        var evens = [Int]()
        var odds = [Int]()
        for num in self.nums {
            if num%2 == 0 {
                evens.append(num)
            }
            else {
                odds.append(num)
            }
        }
        return (evens, odds)
    }
}

var arr = SeparateEvenOdds(nums: [1,2,3,4,10,15])
var separated = arr.separateOddEven()
let (firstQ, secondbh) = arr.separateOddEven()
print(separated.even)
print(separated.odd)

// 5

struct Person {
    var name: String
    var age: Int
    var gender: String
    
    func display() {
        print("Name: \(self.name) Gender: \(self.gender) Age: \(self.age)")
    }
}

var personArray = [
    Person(name: "Joe", age: 27, gender: "male"),
    Person(name: "Harry", age: 21, gender: "male")
]

for person in personArray {
    person.display()
}

// 6

struct Example {
    var a: String = "Default Value"
}
var example1 = Example()
example1.a = "Hello"
var example2 = example1
example2.a = "Hi"
print(example1.a)
print(example2.a)
// as structs are value types, changing the value of some property of one reference will not affect the other

// 7

// demonstrating the difference between struct and class

// basic difference is classes are reference types and structs are value types

class DiffDemonstrationClass {
    var num: Int
    init(num: Int) {
        self.num = num
    }
}

var classInstOne = DiffDemonstrationClass(num: 5)
var clasSInstTwo = classInstOne
print(classInstOne.num, clasSInstTwo.num)
clasSInstTwo.num = 25
print(classInstOne.num, clasSInstTwo.num) // value of classInstOne.num will also change as classes are reference types

struct DiffDemonstrationStruct {
    var num: Int
}

var structInstOne = DiffDemonstrationStruct(num: 5)
var structInstTwo = structInstOne
print(structInstOne.num, structInstTwo.num)
structInstTwo.num = 25
print(structInstOne.num, structInstTwo.num) // value of structInstOne.num won't change as structs are value types
