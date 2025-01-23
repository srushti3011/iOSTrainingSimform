//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
class Student {
    static var count = 0
    var rollNo : Int
    var name : String
    
    init(name: String) {
        self.rollNo = Student.count + 1
        self.name = name
        Student.count += 1
    }
    
    func viewRecord() {
        print("Roll no.: \(self.rollNo) Name: \(self.name)")
    }
    
    static func studentCount(){
        print("Total students are: \(Student.count)")
    }
    
}

var stu1 = Student(name: "Sally")
stu1.viewRecord()
var stu2 = Student(name: "Mally")
stu2.viewRecord()
Student.studentCount()
// instance methods have access to instance and type properties,

enum Nums : Int {
    case one = 1
    case two = 2
    
    static func display(){
        print("this is the static property of Nums enum")
    }
}

Nums.display()
