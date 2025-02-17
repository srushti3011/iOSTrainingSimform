//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

var a : String?
print(a)

let badStart = """
    one
    two
    """
let end = """
    three
    """
print(badStart + end)
print("-----")
let goodStart = """
    one
    two


    """
print(goodStart + end)

let threeMoreDoubleQuotationMarks = #"""
"Here are three more double quotes: """
"""#
print(threeMoreDoubleQuotationMarks)

let m = #"""
Hello \"
"""#
print(m)

var s1 = "Hello"
s1.append(" world")
print(s1)
for char in s1{
    print(char)
}

