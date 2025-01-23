//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//Control Flow

//1
var num = 1
while(pow(2,num) < 100){
    print(pow(2,num))
    num+=1
}

//2
var n = 5
for i in 1...n{
    for i in 1...n{
        print(" * ", terminator: "")
    }
    print()
}

//3
var n = 5
for i in 1...n{
    for j in 1...i{
        print(" * ", terminator: "")
    }
    print()
}

//4
var n = 5
for i in 1...n{
    for j in 1...n{
        if j <= n - i{
            print("   ", terminator: "")
        }
        else{
            print(" * ", terminator: "")
        }
    }
    print()
}

//5
var num = 18
var count = 0
for i in 2...num{
    if num%i==0{
        count+=1
    }
}
if count==1{
    print("Prime")
}
else{
    print("Not Prime")
}
