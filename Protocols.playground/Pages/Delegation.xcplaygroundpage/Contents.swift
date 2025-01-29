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
//    var delegate: Teach?
    weak var delegate: Teach? // for this you can assign any object of the type that confirms to the Teach protocol
    
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

class NewTeacher: Teach {
    var principal = Principal()
    
    init(){
        principal.delegate = self
    }
    
    func takeTest() {
        print("new teacher takes test")
    }
    
    func completeSyllabus() {
        print("new teacher completing the syllabus")
    }
}

var newTeacherOne = NewTeacher()
newTeacherOne.principal.delegateWorkToTeacher()
// manager gives a programmer to add two numbers

//class Manager {
//    var developer: Programmer?
//    
//    func delegateWorkToProgrammer() {
//        var res = developer?.addTwoNos(num1: 6, num2: 5)
//        if res != nil {
//            print(res!)
//        }
//    }
//    
//    func haveMeetings() {}
//    
//    func manageFinances() {}
//}
//
//class Programmer {
//    
//    var manager = Manager()
//    init() {
//        manager.developer = self
//    }
//    
//    func addTwoNos(num1: Int, num2: Int) -> Int {
//        return num1 + num2
//    }
//}
//
//var programmerOne = Programmer()
//programmerOne.manager.delegateWorkToProgrammer()
//programmerOne.manager.manageFinances()
