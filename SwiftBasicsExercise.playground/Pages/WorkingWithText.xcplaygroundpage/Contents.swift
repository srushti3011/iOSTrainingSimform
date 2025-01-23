//: [Previous](@previous)

import Foundation

//: [Next](@next)

//Working with text
//1
var str = "Hello"
var formattedStr = ""
if str.count <= 2 {
    formattedStr += str

} else {
    var count = 0
    for i in str{
        if(count<2){
            formattedStr+=String(i)
            count=count+1
        }
        else{
            break
        }
    }
}
print(formattedStr)

//2
var strOne = "Simform"
var formattedStrOne = ""
var count = 0
for i in strOne {
    if count==0 || count==str.count-1 {
        count+=1
        continue
    }
    else{
        formattedStrOne+=String(i)
        count+=1
    }
}
print(formattedStrOne)

//3
var str1 = "Swift"
var str2 = "Examples"
var ans1 = str1.index(str1.startIndex , offsetBy: 1)
var ans2 = str2.index(str2.startIndex, offsetBy: 1)
var ans = str1[ans1...]+str2[ans2...]
print(ans)
var c = "a"
var strTwo = "hello"
strTwo += "world"
print(strTwo)

//4
var strThree = "wift"
var check = "Sw"
var indst = str.index(strThree.startIndex, offsetBy: 0)
var indend = str.index(strThree.startIndex, offsetBy: 1)
var splitstr = strThree[indst...indend]
if splitstr == check {
    print("true")
}
else{
    print("false")
}

//5
var strFour = "Simform"
var n = 7
var ind1 = strFour.index(str.startIndex, offsetBy: n-1)
var ind2 = strFour.index(str.startIndex, offsetBy: str.count-n)
var resultString = strFour[strFour.startIndex...ind1] + strFour[ind2...]
print(resultString)
