import Cocoa

//type casting

//implemented using is and as operators

var num1 = 5
if num1 is Float{
    print("\(num1) is Int")
}
else{
    print("\(num1) is not int")
}

//

var cInt = 0
var cDouble = 0
var cString = 0
var arr : [Any] = [1,1.5, 6, "hello"]
for i in arr {
    if i is Int {
        cInt+=1
    } else if i is Double {
        cDouble+=1
    } else {
        cString+=1
    }
}
print(cInt, cDouble, cString)

print(0.3 is Double)

class Super {
    var num : Int
    init(num: Int) {
        self.num = num
    }
}

class Sub: Super {
    init() {
        super.init(num : 5)
    }
}

var parent: Super = Sub()
// downcasting original type generalised; target type sepcific
if let casted = parent as? Sub {
    print(casted.num)
}

var child: Sub = Sub()
var casted1 = child as? Super // upcasting
if let casted1 {
    print(casted1.num)
}



class Animal{
    var category: String
    init(category: String) {
        self.category = category
    }
}

class Dog: Animal{
    var noise: String
    init(noise: String, category: String) {
        self.noise = noise
        super.init(category: category)
    }
}

var an = Animal(category: "wild")
if let anCasted = an as? Dog {
    print("anCasted")
} else {
    print("cant cast")
} // not possible


class Cat: Animal{
    var color: String
    init(color: String, category: String) {
        self.color = color
        super.init(category: category)
    }
}

var animalsArray = [
    Cat(color: "brown", category: "wild"),
    Dog(noise: "bark", category: "domestic"),
    Cat(color: "white", category: "wild")
] // type of the array is Animal right now

if let dog = animalsArray[0] as? Dog {
    print("Casted")
} else {
    print("Not Casted")
}

if let dog = animalsArray[1] as? Dog{
    print("Casted")
    print(dog.noise)
} else {
    print("Not Casted")
}

// for primitive types

// conversion of double to float

//var doub = "86"
//print(Int(doub))

//if let doub =  "86" as? Int {
//    print(doub)
//}

// del
//var set: Array<Int> = [1,3,4]
//if let arr1 = set as? Set<Int> {
//    print(arr1)
//} else{
//    print("Cant typecast")
//}
var myset = [1,2,3,3]
print(Set(myset))
