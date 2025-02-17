//: [Previous](@previous)

import Foundation

//: [Next](@next)

// 1

enum WeekDay {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    
    func getDay() -> String {
        switch self {
        case .one:
            return "Monday"
        case .two:
            return "Tuesday"
        case .three:
            return "Wednesday"
        case .four:
            return "Thursday"
        case .five:
            return "Friday"
        case .six:
            return "Saturday"
        case .seven:
            return "Sunday"
        }
    }
}

var daySeven = WeekDay.seven
print(daySeven.getDay())

// 2

enum Month {
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
    
    func getNoOfDays() -> Int {
        switch self {
        case .January:
            return 31
        case .February:
            return 28
        case .March:
            return 30
        case .April:
            return 30
        case .May:
            return 31
        case .June:
            return 30
        case .July:
            return 31
        case .August:
            return 31
        case .September:
            return 30
        case .October:
            return 31
        case .November:
            return 30
        case .December:
            return 31
        }
    }
}

var month = Month.July
print(month.getNoOfDays())

// 3
// Int Enums

enum QualityOfLife: Int {
    case India = 2
    case China = 3
    case USA = 1
}

if let d = QualityOfLife(rawValue: 2) {
    print(d)
} else {
    print("No record")
}

// 4
// String enums

enum Capital: String {
    case India = "Delhi"
    case Canada = "Ottawa"
}

var capitalOfIndia = Capital.India
print(capitalOfIndia.rawValue)

// 5

// enums with raw values
enum NumToDigit: Int {
    case zero = 0
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
}

var num = NumToDigit.five
print(num.rawValue)

// 6

enum Fruit: CaseIterable {
    case Mango
    case Orange
    case Grape
}
var cases = Fruit.allCases
print(cases)
for aCase in cases {
    print(aCase)
} // getting cases using CaseIterable

enum Vegetable {
    case Pea
    case Cabbage
    case Cauliflower
    
    static let cases: [Vegetable] = [.Pea, .Cabbage, .Cauliflower]
}

print(Vegetable.cases)

// 7

enum TempAndCondition {
    case summer(Int)
    case winter(Int)
    case monsoon(Int)
    
    func getTemp() -> Int {
        switch self {
        case .summer(let value):
            return value
        case .winter(let value):
            return value
        case .monsoon(let value):
            return value
        }
    }
}

var summerOne = TempAndCondition.summer(44)
var summerTwo = TempAndCondition.summer(49)
print(summerOne.getTemp())
print(summerTwo.getTemp())
var monsoonOne = TempAndCondition.monsoon(35)
print(monsoonOne.getTemp())

// 8

enum FruitColor: String {
    case Apple = "Red"
    case Mango = "Yellow"
    case Grape = "Green"
    
    func findRawValue() -> String {
        switch self {
        case .Apple:
            return self.rawValue
        case .Mango:
            return self.rawValue
        case .Grape:
            return self.rawValue
        }
    }
}

var fruitOne = FruitColor.Apple
print(fruitOne.rawValue)
print(fruitOne.findRawValue())
