//: [Previous](@previous)

import Foundation

//: [Next](@next)

// Delegation

// Meaning: hand off some of the tasks to other object to handle

// Delegator, Delegate, Protocol involved
// Delegator is the one who will delegate(assign) task to the delegate
// Delegate will perform the task
// Delegate will conform to the protocol i.e. implement all the methods declared in the protocol

protocol Teach: AnyObject {
    func completeSyllabus() -> Void
    func takeTest() -> Void
}

class Principal {
    var delegate: Teach?
//    weak var delegate: Teach?
    
    func delegateWorkToTeacher() {
        print("delegating the work")
        delegate?.completeSyllabus()
        delegate?.takeTest()
    }
} // delegator

class Teacher: Teach {
    var principal = Principal()
    init() {
        principal.delegate = self
    }
    
    func completeSyllabus() {
        print("Completing syllabus")
    }
    
    func takeTest() {
        print("Taking the test")
    }
} // delegate

var teacherOne = Teacher()
teacherOne.principal.delegateWorkToTeacher()
