//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//Optionals

//1
var str1 : String?
str1 = "hello"
print(str1!)

//2
var str2 : String?
str2 = "world"
if(str2 != nil){
    print(str2!)
} //forced unwrapping

//3, 4
var str3 : String?
str3 = "qwerty"
if let checked_str3 = str3 {
    print(checked_str3)
}

//5
var str4 : String?
var str5 : String?
str4 = "hello"
str5 = "world"

func check (str1 : String?, str2 : String?) {
    guard let s1 = str1, let s2 = str2 else {
        print("error")
        return
    }
    print(s1, s2)
}
check(str1: str4, str2: str5)

//6
//nil coalescing operator

//conditional check for if the value is nil or not, if it is nil, then give it a fallback value

var str : String?
let unwrap_str = str ?? "notavailable"
print(unwrap_str)
str = "assignedvalue"
let tryAgain = str ?? "notavailable"
print(tryAgain)
