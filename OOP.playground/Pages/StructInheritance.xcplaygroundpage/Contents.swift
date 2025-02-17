import Foundation


//example of passing struct instance to a function and changing the value of it in the function
struct Numbers {
    var num: Int
    var spell: String
    
    func display() {
        print("\(self.num) \(self.spell)")
    }
}

func addTwoNums (num1 : Numbers, num2 : Numbers) -> Numbers {
    var result = Numbers(num: 0, spell: "default")
    
    result.num = num1.num + num2.num
    return result
}

func modifyNum (num1 : inout Numbers, newVal : Int, newSpell : String) {
    num1.num = newVal
    num1.spell = newSpell
}

var numberOne = Numbers(num: 1, spell: "one")
numberOne.display()

var numberTwo = Numbers(num: 2, spell: "one")
numberTwo.display()

var addedNum = addTwoNums(num1: numberOne, num2: numberTwo)
print(addedNum.num, addedNum.spell)
modifyNum(num1: &addedNum, newVal: addedNum.num, newSpell: "three")
print(addedNum.num, addedNum.spell)

// struct inheritance using protocols (basic example)

protocol Display {
    func display()
}

struct Employee: Display {
    func display() {
        print("this is the display function in employee struct")
    }
}

struct BusinessMan: Display {
    func display() {
        print("this is the display function in businessman struct")
    }
}

var bmanOne = BusinessMan()
bmanOne.display()

var empOne = Employee()
empOne.display()

// protocols with properties

protocol Age {
    var age: Int { get }
    func displayAge()
}

struct Celebrity : Age {
    var name: String
    var birthYear: Int
    var currentYear : Int

    var age: Int {
        get {
            return currentYear-birthYear
        }
    }
    func displayAge() {
        print(self.age)
    }
}

var celebOne = Celebrity(name: "Sally Mally", birthYear: 2000, currentYear: 2025)
print(celebOne.age)
