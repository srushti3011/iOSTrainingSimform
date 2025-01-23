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

