//: [Previous](@previous)

import Foundation

//: [Next](@next)


// observation: defer statements executed in reverse order
// statements inside a single defer statement executed in top down manner (normal way)

// the statements in defer alsways get executed, irrespective of the error is thrown or not
func test() {
    
    
    
    
    defer {
        print("first defer")
    }
    defer {
        print("second defer")
    }
    defer {
        print("3rd 1")
        print("3rd 2")
    }
    
    
}

test()

