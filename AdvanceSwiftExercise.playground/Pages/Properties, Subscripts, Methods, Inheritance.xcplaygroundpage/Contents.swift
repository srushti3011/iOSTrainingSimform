//: [Previous](@previous)

import Foundation

//: [Next](@next)

// Properties, Subscripts, Methods and Inheritance

// 1

class GetOnlyProperty {
    var fName : String
    var lName : String
    var fullName : String {
        return fName + " " + lName
    } // name is a get-only property as it doesn't have a setter
    
    init(fName: String, lName: String) {
        self.fName = fName
        self.lName = lName
    }
}

var nameOne = GetOnlyProperty(fName: "Mally", lName: "Sally")
print(nameOne.fullName)
//nameOne.name = "Hello World" // gives error

// 2

class SquarePerimeter {
    var side: Int
    
    var perimeter: Int {
        get {
            return 4*side
        }
        set {
            self.side = newValue/4
        }
    } // perimeter is a computed property here
    
    init(side: Int) {
        self.side = side
    }
}

var squareOne = SquarePerimeter(side: 5)
print(squareOne.perimeter)
squareOne.perimeter = 40
print(squareOne.side)

// 3

class PersonClass {
    var name: String
    var age: Int // name and age are stored properties
    
    func display() {
        print(name, age)
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var personOne = PersonClass(name: "Mally", age: 20)
personOne.display()
print(personOne.name, personOne.age) // accessing the stored properties

// 4

class Company {
    private var profit: Int
    var turnOver: Int
    
    init(profit: Int, turnOver: Int) {
        self.profit = profit
        self.turnOver = turnOver
    }
    
    func turnOverInUSD() -> Int {
        return Int(turnOver/80)
    }
    
    func getProfit() -> Int {
        return self.profit
    }
}

var companyOne = Company(profit: 50000, turnOver: 140000)
//print(companyOne.profit) // gives eror
print(companyOne.getProfit())

// 5

class PersonQFive {
    var id: Int
    var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
    func display() {
        print("ID is \(id) Name is \(name)")
    }
}

var people: [PersonQFive] = [
    PersonQFive(id: 1, name: "Sally"),
    PersonQFive(id: 2, name: "Mally"),
    PersonQFive(id: 3, name: "Joe"),
    PersonQFive(id: 4, name: "Harry")
]

for person in people {
    person.display()
}

// 6

class PropertyObserve {
    var numObserve: Int {
        willSet {
            print("numObserve going to set to \(newValue)")
        }
        didSet {
            print("updation of numObserve")
        }
    }
    init(numObserve: Int) {
        self.numObserve = numObserve
    }
}

var numOne = PropertyObserve(numObserve: 5)
numOne.numObserve = 10

// 7

class LazyPropertyClass {
    var normalProperty: Int
    
    lazy var lazyProperty: String = {
        var value = "This is the lazy property content"
        return value
    }()
    
    init(normalProperty: Int) {
        self.normalProperty = normalProperty
    }
}

var makeInstance = LazyPropertyClass(normalProperty: 20) // right now the lazyProperty won't be initialized
print(makeInstance.lazyProperty) // as the lazyProperty accessed here, now initialization takes place

// 8

class PersonQEight {
    var name: String
    var occupation: String
    
    init(name: String, occupation: String) {
        self.name = name
        self.occupation = occupation
    }
    
    func viewPerson() {
        print(name, occupation)
    }
}

class Student: PersonQEight {
    var college: String
    
    init(college: String, nameStudent: String, occupationStudent: String) {
        self.college = college
        super.init(name: nameStudent, occupation: occupationStudent)
    }
    
    func viewStudent() {
        super.viewPerson()
        print(college)
    }
}

class Employee: PersonQEight {
    var company: String
    
    init(company: String, empName: String, empOccupation: String) {
        self.company = company
        super.init(name: empName, occupation: empOccupation)
    }
    
    func viewEmployee() {
        super.viewPerson()
        print(company)
    }
}

var employeeOne = Employee(company: "Company1", empName: "Mally", empOccupation: "Job")
var studentOne = Student(college: "BVM", nameStudent: "Sally", occupationStudent: "Intern")
var personOnee = PersonQEight(name: "Person", occupation: "Business-Man")

employeeOne.viewEmployee()
studentOne.viewStudent()
personOnee.viewPerson()

// 9

struct Names {
    var name: String {
        willSet {
            print("mutating function called")
        }
        didSet {
            print("mutating function did the updation")
        }
    }
    
    mutating func updateName(newName: String) {
        self.name = newName
    }
}

var nameTwo = Names(name: "Mally")
print(nameTwo.name)
nameTwo.updateName(newName: "Sally")
print(nameTwo.name)

// 10

class Car {
    func riding() {
        print("The car is riding")
    }
}

class Suv: Car {
    override func riding() {
        print("Suv car is riding")
    }
}

var suvOne = Suv()
suvOne.riding()

// 11

class Flowers {
    var name: String
    static var count: Int = 0
    static func displayCount() {
        print("This is the static method of Flowers and the value of count of flowers is \(Flowers.count)")
    }
    init(name: String) {
        self.name = name
        Flowers.count += 1
    }
}

var flowerOne = Flowers(name: "Hydrangea")
var flowerTwo = Flowers(name: "Lily")
Flowers.displayCount()

// 12

class Fruits {
    var fruitName: String
    static func fruitsStaticMethod() {
        print("Fruit static method")
    }
    class func fruitsClassMethod() {
        print("Fruit class method")
    }
    init(fruitName: String) {
        self.fruitName = fruitName
    }
}

class Orange: Fruits {
    let color = "Orange"
    
    init() {
        super.init(fruitName: "Orange")
    }
    
    override class func fruitsClassMethod() {
        print("Orange class method")
    }
    
//    override static func fruitsStaticMethod() {
//
//    } // gives error cannot override static method
    
//     hence, the difference between static and class methods is that both belong to class(type) but class method can be overridden whereas static can't
}

var orangeOne = Orange()
Orange.fruitsClassMethod()

// 13

final class WeekDays {
    static let days: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    static func subscriptFunc(day: Int) -> String? {
        if(day > 6 || day < 0) {
            return nil
        } else {
            return WeekDays.days[day]
        }
    }
}

if let day = WeekDays.subscriptFunc(day: 8) {
    print(day)
} else {
    print("Some problem")
}

// 14, 15

class StringOperation {
    var str: String
    
    subscript(ind: Int) -> Character {
        var index = self.str.index(self.str.startIndex, offsetBy: ind)
        return self.str[index]
    } // subscript for returning the character at given position
    
    subscript(range: Range<Int>) -> String {
        var resultantStr = ""
        for num in range {
            var index = self.str.index(self.str.startIndex, offsetBy: num)
            resultantStr += String(self.str[index])
        }
        return resultantStr
    }
    
    init(str: String) {
        self.str = str
    }
}

var strOne = StringOperation(str: "Hello World")
print(strOne[6])
print(strOne[2..<10])

// 16

var arr = [10,20,40,99,54,36]
func giveElementsInRange(range: Range<Int>, from: [Int]) -> [Int] {
    var nums : [Int] = []
    for num in range {
        nums.append(from[num])
    }
    return nums
}

print(giveElementsInRange(range: 2..<4, from: arr))

//17

class KeyValueArray {
    var keyValueArray: [[Int : String]]
    
    subscript(at: Int) -> String? {
        var temp = self.keyValueArray[at-1]
        return temp[at] ?? nil
    }
    
    init(keyValueArray: [[Int : String]]) {
        self.keyValueArray = keyValueArray
    }
}

var array = [[1: "Hello"], [2: "hii.."], [3: "world"]]
var firstKeyValueArray = KeyValueArray(keyValueArray: array)
if let there = firstKeyValueArray[3] {
    print(there)
} else {
    print("no")
}

// 18

class Person {
    var name: String
    var age: Int
    var birthdate: String
//    static var personArr: [Person] = []
    
    init(name: String, age: Int, birthdate: String) {
        self.name = name
        self.age = age
        self.birthdate = birthdate
    }
}
class PersonArrayClass {
    var people: [Person]
    init(people: [Person]) {
        self.people = people
    }
    
    subscript (name: String) -> Person? {
        for person in self.people {
            if person.name == name {
                return person
            }
        } // TODO: use heigher order functions
        // FIXME: use heigher order functions
        // MARK: use heigher order functions
        return nil
    }
}
var personOne1 = Person(name: "P1", age: 20, birthdate: "15/05/2005")
var personTwo = Person(name: "P2", age: 10, birthdate: "15/09/2006")
var personArray = [personOne1, personTwo]
var pArray = PersonArrayClass(people: personArray)
if let found = pArray["P1"] {
    print(found.age)
} else {
    print("not found")
}


// 19

class Song {
    var duration: Double
    var globalListeners: Int
    
    init(duration: Double, listeners: Int) {
        self.duration = duration
        self.globalListeners = listeners
    }
    
    func songDescription() {
        print(duration, globalListeners)
    }
}

class HipHop: Song {
    var countryOfOrigin: String
    
    init(countryOfOrigin: String, dur: Double, listener: Int) {
        self.countryOfOrigin = countryOfOrigin
        super.init(duration: dur, listeners: listener)
    }
    
    override func songDescription() {
        print(duration, globalListeners, countryOfOrigin)
    }
}

class Classical: Song {
    var language: String
    
    init(language: String, dur: Double, listener: Int) {
        self.language = language
        super.init(duration: dur, listeners: listener)
    }
    override func songDescription() {
        print(duration, globalListeners, language)
    }
}

var songOne = Song(duration: 3.2, listeners: 10000)
songOne.songDescription()

var hiphopOne = HipHop(countryOfOrigin: "USA", dur: 5, listener: 2000)
hiphopOne.songDescription()

var classicalOne = Classical(language: "Hindi", dur: 4.5, listener: 15000)
classicalOne.songDescription()

// 20

class Country {
    var name: String
    var capital: String
    
    init(name: String, capital: String) {
        self.name = name
        self.capital = capital
    }
    
    func display() {
        print("Country: \(name) Capital: \(capital)")
    }
}

var countryOne = Country(name: "Inia", capital: "Delhi")
countryOne.display()
var countryTwo = Country(name: "Canada", capital: "Ottawa")
countryTwo.display()
countryOne.name = "India"
countryOne.display()
