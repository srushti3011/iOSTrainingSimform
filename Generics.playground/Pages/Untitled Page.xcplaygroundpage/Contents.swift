import Cocoa

func genericPrint <T> (val: T) {
    print("The value passed is \(val)")
}
genericPrint(val: "hello")

final class Queue<T> {
    var valsInQueue : [T]
    
    init() {
        self.valsInQueue = []
    }
    
    func push(val: T) {
        valsInQueue.append(val)
    }
    
    func pop() {
        valsInQueue.removeFirst()
    }
    
    func displayQueue() {
        valsInQueue.printA()
    }
}

extension Array {
    func printA() {
        for i in self {
            print(i, terminator: " ")
        }
        print()
    }
}

var queueOne = Queue<Int>()
queueOne.push(val: 5)
queueOne.push(val: 11)
queueOne.push(val: 16)
queueOne.push(val: 35)
queueOne.push(val: 20)
queueOne.displayQueue()
queueOne.pop()
queueOne.push(val: 60)
queueOne.displayQueue()

var queueTwo = Queue<String>()
queueTwo.push(val: "AB")
queueTwo.push(val: "CD")
queueTwo.push(val: "EF")
queueTwo.displayQueue()


func findInd<T: Equatable>(of valToFind: T, from fromArr: [T]) -> Int {
    for (index, value) in fromArr.enumerated() {
        if valToFind == value {
            return index
        }
    }
    return -1
}
print(findInd(of: 5, from: [1,2,3,4,5,6]))

func addToAll<T: AdditiveArithmetic>(addthis: T, addToArr: inout [T]) {
    for (index, value) in addToArr.enumerated() {
        addToArr[index] += addthis
    }
}

func printArr<T>(arr: [T]) {
    for i in arr {
        print(i, terminator: " ")
    }
}

var arr = [2,4,5,6]
addToAll(addthis: 10, addToArr: &arr)
printArr(arr: arr)
