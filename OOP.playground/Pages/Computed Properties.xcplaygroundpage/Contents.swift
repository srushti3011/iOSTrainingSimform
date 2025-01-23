//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class Name {
    var fName : String
    var lName : String
    var fullName : String {
        get {
            return fName+" "+lName
        } //runs when fullName is accessed
        set {
            var flNameArr = newValue.split(separator : " ")
            self.fName = String(flNameArr[0])
            self.lName = String(flNameArr[1])
        } //runs when fullName is set with a new value
    }
    
    init(fName: String, lName: String) {
        self.fName = fName
        self.lName = lName
    }
}

var person1 = Name(fName: "Lily", lName: "M")
print(person1.fullName)
person1.lName = "Teak"
print(person1.fullName)
person1.fullName = "Qw ERt "
print("New fName and lName is", person1.fName, person1.lName)

//read only computed properties

class Circle {
    var radius : Double
    var area : Double {
        return 3.14 * radius * radius
    }
    
    init(radius: Double) {
        self.radius = radius
    }
}

var cir1 = Circle(radius: 5.3)
print(cir1.area)
//cir1.area = 30 gives error as area is a get-only property
