//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//functions

func add (num1 : Int, num2 : Int) -> Int {
    print("num 1 is", num1, "and num 2 is", num2)
    return num1+num2
}

print(add(num1 : 5, num2 : 9))

func noreturn () {
    print("hello")
}
print(noreturn())
