//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class Password {
    var password : String {
        willSet {
            confirmSet()
        }
        didSet {
            setDone()
        }
    }
    init(password: String) {
        self.password = password
        print("init called")
    }
    
    func confirmSet(){
        print("Are you sure you want to set the password")
    }
    
    func setDone() {
        print("Password Reset")
    }
}

var pass1 = Password(password: "mnoasd")
pass1.password = "hello"

//--------------------------------------------------------------
//trying a loop for willSet and didSet

class Person {
    var name : String
    var age : Int {
        willSet {
            print("will set")
            print(self.age)
        }
        didSet {
            print("did set")
            print(self.age)
        }
    }
    
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
}

var person1 = Person(name: "Sally", age : 20)
for i in 1...3 {
    person1.age+=1
}
