//: [Previous](@previous)

import Foundation

//: [Next](@next)

class Person {
    var name: String
    var age: Int
    var income: Income?
    var address: Address?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func isAllInfoAvl() -> Bool {
        if let inc = self.income, let add = self.address {
            print(inc, add)
            return true
        }
        return false
    }
    
    func checkAddress() {
        if let ad = self.address?.city.isEmpty {
            print("empty address")
        } else {
            print("address nil")
        }
    }
    
    func checkIncome() {
        if let inc = self.income?.incomePerAnnum, inc == 10 {
            print("income = 10")
        } else {
            print("income not equal to 10")
        }
    }
}

class Income {
    var incomePerAnnum: Int
    var incomePerMonth: Int {
        get {
            return incomePerAnnum/12
        }
        set {
            self.incomePerAnnum = newValue * 12
        }
    }
    
    init(incomePerAnnum: Int) {
        self.incomePerAnnum = incomePerAnnum
    }
}

class Address {
    var buildingNo: Int
    var lane: String
    var city: String
    var country: String
    
    init(buildingNo: Int, lane: String, city: String, country: String) {
        self.buildingNo = buildingNo
        self.lane = lane
        self.city = city
        self.country = country
    }
}

var personOne = Person(name: "Sally", age: 27)
var incOfPersonOne = Income(incomePerAnnum: 10)
personOne.income = incOfPersonOne
print(personOne.isAllInfoAvl())
personOne.checkAddress()
personOne.checkIncome()
