//: [Previous](@previous)

import Foundation

//: [Next](@next)

// Another protocol conforoming to Equatable

final class Student: Hashable {
    let number: Int
    let age: Int
    
    init(number: Int, age: Int) {
        self.number = number
        self.age = age
    }
    
    static func ==(lhs: Student, rhs: Student) -> Bool {
        return lhs.number == rhs.number && lhs.age == rhs.age
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(number)
        hasher.combine(age)
    }
}

let studentOne = Student(number: 1, age: 20)
let studentTwo = Student(number: 2, age: 20)

print(studentOne.hashValue)
print(studentTwo.hashValue)

// If two objects are same their hash values are definitely same. But vice versa is not true

// as student is hashable now, try using it as a key for dictionary

var studentAddress: [Student : String] = [
    studentOne: "Ahmedabad",
    studentTwo: "Surat"
]

for (key, value) in studentAddress {
    print(key.number, key.age, value)
}


// making the struct hashable
struct m: Hashable {
    var exampleProp: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(exampleProp)
    }
}
var am = m(exampleProp: 5)
print(am is AnyHashable)

//opaque types
