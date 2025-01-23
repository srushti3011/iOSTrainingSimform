//: [Previous](@previous)

import Foundation

//: [Next](@next)

//Arrays

//1
var arr = [1,2,3,9]
if arr[0] == arr[arr.count-1] {
    print("Equal")
}
else{
    print("Not Equal")
}

//2
var arrOne = [1,2,3,4]
var newarr = Array(repeating: 0, count: arrOne.count*2)
newarr[newarr.count-1] = arrOne[arrOne.count-1]
print(newarr)

////3
var arrTwo = [0,1,2,3]
var newarrTwo = Array(repeating: 0, count: 2)
newarrTwo[0] = arrTwo[0]
newarrTwo[1] = arrTwo[1]
print(newarrTwo)

//4
var arrThree = [0, 50, 100, 20, 80, 150]
var max = arrThree[0]
for num in arrThree {
    if num > max {
        max=num
    }
}
print(max)

//5
var arrFour = [0,5,6,2,10]
arrFour.sort(by: >)
print(arrFour)

//6
var listOfNumbers = [1,2,3,10,100]
var divisors = [2,5]
for num in listOfNumbers {
    for div in divisors {
        if num % div == 0 {
            print(num)
            break
        }
    }
}
