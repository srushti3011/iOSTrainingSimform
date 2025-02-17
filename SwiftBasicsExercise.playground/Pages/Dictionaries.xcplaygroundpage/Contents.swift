//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//Dictionaries

//1
var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

var encodedMessage = "uijt nfttbhf jt ibse up sfbe"
var decodedMessage = ""
for charr in encodedMessage {
    if String(charr) == " " {
        decodedMessage+=" "
    }
    for (key,value) in code {
        if String(charr) == value {
            decodedMessage+=key
        }
    }
}
print(decodedMessage)

//2
var people: [[String:String]] = [
    [
    "firstName": "Calvin",
    "lastName": "Newton"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen"
    ]
]

var firstNames: [String] = []
for name in people {
    firstNames.append(name["firstName"]!)
}
print(firstNames)

//3
var peopleOne: [[String:Any]] = [
    [
    "firstName": "Calvin",
    "lastName": "Newton",
    "score": 13
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": 12
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": 10
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": 3
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": 16
    ]
]
var fullNames : [String] = []

for name in peopleOne {
    if let fName = name["firstName"] as? String {
        if let lName = name["lastName"] as? String {
            var fullName = fName + " " + lName
            fullNames.append(fullName)
        }
    }
}
print(fullNames)

//4
var peopleTwo: [[String:Any]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": 13
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": 12
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": 10
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": 3
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": 16
    ]
]
var name = ""
if let minScore = peopleTwo[0]["score"] as? Int {
    var ind = 0
    for person in peopleTwo {
        if let score = person["score"] as? Int {
            if score < minScore{
                if let fName = person["firstName"] as? String {
                        if let lName = person["lastName"] as? String {
                            var fullName = fName + " " + lName
                            name = fullName
                        }
                    }
            }
        }
    }
}
print(name)

//5
var peopleThree: [[String:Any]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": 13
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": 23
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": 10
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": 3
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": 16
    ]
]

let sorted = peopleThree.sorted {
    guard let score1 = $0["score"] as? Int, let score2 = $1["score"] as? Int else {
        return false
    }
    return score1 > score2
}
//printing leader board
for peopleThree in sorted {
    if let fname = peopleThree["firstName"] as? String {
        if let lname = peopleThree["lastName"] as? String {
            if let score = peopleThree["score"] as? Int {
                print(lname , fname, score)
            }
        }
    }
}

//6
var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var freq : [Int : Int] = [:]
for num in numbers{
    if(freq[num] == nil) {
        freq[num] = 1
    }
    else {
        freq[num]!+=1
    }
}
let s = freq.sorted(by:{ $0.key < $1.key })
print(s)
