//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// loops
for i in 5...10 {
    print(i)
}

for i in 2..<8 {
    print(i+4)
}

var num = 10

while(num<12) {
    print(num)
    num=num+1
}
print("-----")
repeat {
    print(num)
} while(num != 12)

var m = 5
switch m {
case 1:
    print(m, " is one")
case 2:
    print(m, " is two")
default:
    print("None")
}
