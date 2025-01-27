import Cocoa

//try
//do
//catch
//throws
//throw
//defer

// throwing basic error
struct StringError : Error {
    var err : String
}

func addPositive(num1: Int, num2: Int) throws -> Int {
    if num1 < 0 || num2 < 0 {
        throw StringError(err: "Any num is less than 0")
//        throw
    }
    return num1 + num2
}

do {
    let m = try addPositive(num1: 5, num2: 7)
    print(m)
} catch let error as StringError {
    print(error)
    print("\(error.err)")
}

//defer statements
