//: [Previous](@previous)

import Foundation

//: [Next](@next)

// Equatable -> Used to Check for equality only, doesn't have any other methods
// Comparable -> Conforms to Equatable also. Used to check for >, <, >=, <=, !=
final class Student: Comparable {
    let number: Int
    let name: String

    init(number: Int, name: String) {
        self.number = number
        self.name = name
    }
    static func ==(lhs: Student, rhs: Student) -> Bool {
        return lhs.number==rhs.number && lhs.name==rhs.name
    }
    static func >(lhs: Student, rhs: Student) -> Bool {
        return lhs.number > rhs.number
    }
    static func <(lhs: Student, rhs: Student) -> Bool {
        return lhs.number < rhs.number
    }
}
let student1 = Student(number: 6, name: "Sally")
let student2 = Student(number: 1, name: "Sally")
print(student1 == student2)
print(student1 >= student2)
//print(student1 != student2)

