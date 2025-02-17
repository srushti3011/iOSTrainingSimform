import Cocoa

// adding methods in extensions
extension String {
    func countVowels() -> Int {
        var result: Int = 0
        for i in self.lowercased() {
            switch i{
            case "a":
                result+=1
            case "e":
                result+=1
            case "i":
                result+=1
            case "o":
                result+=1
            case "u":
                result+=1
            default:
                continue
            }
        }
        return result
    }
    
    func startsWithVowel() -> Bool {
        var firstCharInd = self.index(self.startIndex, offsetBy: 0)
        var firstChar = self[firstCharInd].lowercased()
        switch firstChar{
        case "a":
            return true
        case "e":
            return true
        case "i":
            return true
        case "o":
            return true
        case "u":
            return true
        default:
            return false
        }
    }
}
var str = "Aello"
print(str.countVowels())
print(str.startsWithVowel())

// Mutating instance methods

extension Int {
    mutating func square() {
        self = self * self
    }
}

var num = 5
num.square()
print(num)

// trying with class

class Employees{
    var name: String
    var dept: Dept
    var wagePerHourUSD: Int
    
    enum Dept{
        case it
        case hr
        case marketing
    }
    
    init(name: String, dept: Dept, wagePerHourUSD: Int) {
        self.name = name
        self.dept = dept
        self.wagePerHourUSD = wagePerHourUSD
    }
}

var emp1 = Employees(name: "Emp1", dept: Employees.Dept.hr, wagePerHourUSD: 25)

extension Employees{
    func wagePerHourINR() -> Int{
        return self.wagePerHourUSD*80
    }
}

print(emp1.wagePerHourINR())

// access the string index directly using index subscript

extension String{
    func getCharAt(index: Int) -> Character {
        var ind = self.index(self.startIndex, offsetBy: index)
        return self[ind]
    }
    
    func subString(startIndex: Int, endIndex: Int) -> String {
        var indStart = self.index(self.startIndex, offsetBy: startIndex)
        var indEnd = self.index(self.startIndex, offsetBy: endIndex)
        return String(self[indStart...indEnd])
    }
    
    subscript(index: Int) -> Character {
        var ind = self.index(self.startIndex, offsetBy: index)
        return self[ind]
    }
}

var str1 = "MallyAndSally"
print(str1.getCharAt(index: 4))

print(str1.subString(startIndex: 5, endIndex: 7))

print(str1[8])

//computed properties

extension String{
    var doubleString: String {
        return self+self
    }
}
var singleString = "Hello"
print(singleString.doubleString)

//Initializers

struct Student {
    var name: String
    var std: Int
//    init(name: String, std: Int) {
//        self.name = name
//        self.std = std
//    }
//    init(name: String) {
//        self.name = name
//        self.std = 1 // as this custom initializer is written, it shadows the default self generated initializer. So we have to define explicitly as done above. Else we can use Extensions
//    }
}

extension Student {
//    var val:Int
    
    init(name: String){
        self.name = name
        self.std = 1
    } // in addition to this, the auto generated init also available
}

var studentOne = Student(name: "Sally") //custom init defined by us
var studentTwo = Student(name: "Mally", std: 5) //auto generated init accessed

// extension for Array of type Any

extension [Any] {
    func printArr() {
        for i in self {
            print(i, terminator: " ")
        }
    }
}

var s: [Any] = [1,2,"p"]
s.printArr()

// extension for Array of type Int

//extension Array where Element==Int {}
//extension Array {}
extension [Int] {
    func len() -> Int {
        return self.count
    }
}
var intArr = [1,4,6,7,3]
print(intArr.len())

// extension for Dictionary

extension [Int: String] {
    func printDi() {
        for (key, value) in self {
            print(key, value)
        }
    }
    func dictionarySize() -> Int {
        return self.count
    }
}

var dictionaryOne = [
    1: "NameOne",
    2: "NameTwo"
]
dictionaryOne.printDi()
print(dictionaryOne.dictionarySize())

// making extension for a class that is final

final class FinalClass {
    var varOne: Int
    init(varOne: Int) {
        self.varOne = varOne
    }
}

extension FinalClass {
    func display() {
        print("Extension of final class, value is \(self.varOne)")
    }
}

var fClOne = FinalClass(varOne: 6)
fClOne.display()


// init in extension of class

class TestClass {
    let var1: Int
    init(var1: Int) {
//        self.var1 = funccall()
        self.var1 = var1
    }
}

@objc extension TestClass {
    convenience init() {
        self.init(var1: 5)
    }
    static func doo() {
        print("Do")
    }
    class func doo1() {
        print("doo1")
    }
    func display() {
        print("display")
    }
}

TestClass.doo1()

// have a class, make its extension, try overriding the method

class TestChildClass: TestClass {
    override func display() {
        print("display of TestChildClass")
    }
//    override func doo1() {
//    } // Method does not override any method from its superclass
}

let TestChildInstance = TestChildClass(var1: 5)
TestChildInstance.display()

// have a class, have its extension and define same class in both; try it for primitive type as well; for same signature and diff. signature method

//class TestClass1 {
//    func display() {
//        print("hello")
//    }
//}
//extension TestClass1 {
//    func display() { // gives error, invalid redeclaration of display
//        print("display from extension")
//    }
//}

// extensions inside class

//class HaveExtension {
//    func display() {
//        print("display of HaveExtension")
//    }
//    extension HaveExtension {
//    } // gives error that declaration valid only at file scope
//}


//extension String {
//    var count: Int {
//        return 5
//    }
//}

//print("a".count)



