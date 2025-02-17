//: [Previous](@previous)

import Foundation

//: [Next](@next)

protocol Stack {
    associatedtype Element: Equatable
    var items: [Element] { get }
    mutating func push(_ item: Element)
    mutating func pop() -> Element?
}

class MyStack: Stack {
//    typealias Element = Int
    var items = [Int]()
    func push(_ item: Int) {
        items.append(item)
    }
    func pop() -> Int? {
        if items.isEmpty {
            return nil
        }
        return items.popLast()
    }
}

//
//struct IntStack: Stack {
//    var items = [Int]()
//    
//    mutating func push(_ item: Int) {
//        items.append(item)
//    }
//    
//    mutating func pop() -> Int? {
//        return items.popLast()
//    }
//}

protocol Container {
    associatedtype Item: Equatable
    func append(_ item: Item)
    var count: Int { get }
}

final class ConformContainer: Container {
    typealias Item = String
    
    var count: Int
    func append(_ item: String) {
        print(item, count)
    }
    init(count: Int) {
        self.count = count
    }
}

var conformContainerOne = ConformContainer(count: 4)
conformContainerOne.append("hello")

// generic protocol for providing simple class or struct methods like
