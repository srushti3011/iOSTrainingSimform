import UIKit

var greeting = "Hello, playground"
//functions

func add(num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}

var res = add(num1 : 10, num2 : 2)
print(res)

var res1 = add(num1 : 40, num2 : 10)
print(res1)

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print(bounds)

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
var m = minMax(array: [1,10,5])
print(m)

func posAndNeg(array: [Int]) -> (pos : Int?, neg : Int?){
    var pos : Int? = nil
    var neg : Int? = nil
    for i in array {
        if i>0 {
            pos = i
        }
        else if i<0 {
            neg = i
        }
    }
    if pos != nil && neg != nil {
        return (pos!, neg!)
    }
//    else if pos != nil {
//        return (pos!)
//    }
//    else {
//        return (neg=neg!)
//    }
    return (pos , neg)
}

var res = posAndNeg(array: [2, 6, 20])
print(res)

func add(num1 : Int, num2 : Int) -> Int {
    num1+num2
}
print(add(num1 : 9, num2 : 5))


//argument label and parameter name

func add (n1 num1 : Int, n2 num2 : Int) -> Int {
    num1 + num2
}

print(add(n1 : 7, n2 : 9))

func defaultArgs (_ par1 : Int = 15, _ par2 : Int) -> Int {
    par1 * par2
}

print(defaultArgs(10, 20))

//varadic parameters
//
func mean(_ nums : Int..., name : String) -> Float {
    var sum = 0
    for i in nums {
        sum+=i
    }
    print("Reached at printing", name)
    return Float(sum)/Float(nums.count)
}
print(mean(7,5,3,1, name : "Simform"))

func change (num : inout Int) -> Void {
    num = 10
}
var n = 30
print(n)
change(num : &n)
print(n)

//return a function

func printNum (num : Int) -> Void {
    print(num)
}

func greetAndPrintNum (num : Int) -> (Int) -> Void {
    print("Hello")
    return printNum
}

var f = greetAndPrintNum(num: 10)
print(f)
f(10)


func f(str1, str2) {
    return str1+str2
}
print(f(str1: "hello", str2: "world"))
doesn't wirk

func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount// captures incrementAmount and total
        print("Executing")
        return total
    }
    return incrementer
}

let incrementByTwo = makeIncrementer(incrementAmount: 2)
print(incrementByTwo())  // Prints 2
print(incrementByTwo())  // Prints 4

func performOperation(_ operation: () -> Void) {
    print("Starting operation...")
    operation()  // calling the closure
    print("Operation finished.")
}

performOperation ({
    print("Executing operation...")
})

func inc(amt : Int) -> () -> Int {
    print("Incrementing")
    var total = 0
    func i() -> Int {
        total+=amt
        return total
    }
    return i
}

var m = inc(amt : 20)
print(m())
print(m())

//autoclosures
func add (num1 : Int, cl : () -> (Bool) ) -> (Void) {
    if cl() {
        print(num1)
    }
    else {
        print("cl condition is false")
    }
}

var num = 40
add(num1 : num, cl : {num>10})


