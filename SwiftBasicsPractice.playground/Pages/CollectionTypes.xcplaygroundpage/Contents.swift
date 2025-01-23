//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//working with arrays and dictionaries

var arr1: [String] = []
print(arr1)
arr1.append("orange")
print(arr1)
print(arr1.count)

var arr2:[Any] = Array([])
print(type(of: arr1))
arr2.append(3)
arr2.append("hello")

var dictionary1 = ["name":"ABCD", "location":"Ahmedabad"]
for i in dictionary1 {
    print(i)
}

var di:[String:Any] = [:]

var arr = [1,2,3,4]

var set1 : Set<AnyHashable> = ["1", 2, "hello"]
print(set1)

var d1 : [Int : String] = [
    1 : "A",
    2 : "B"
]
print(d1[2]!)
d1[3] = "C"
print(d1)


var m : [Any] = [1,2,"Hello"]
print(m)
