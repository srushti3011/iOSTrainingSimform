//: [Previous](@previous)

import Foundation

//: [Next](@next)

enum credError : Error {
    case wrongCred
    case emptyUsername
    case emptyPassword
}

func checkCreds(username: String, pass: String) throws -> Bool {
    if username.isEmpty {
        throw credError.emptyUsername
    } else if pass.isEmpty {
        throw credError.emptyPassword
    } else if !authenticate() {
        throw credError.wrongCred
    }
    return true
}
func authenticate() -> Bool {
    return false
}

do {
    let checkCredRes = try checkCreds(username: "username", pass: "pass")
    print("user login \(checkCredRes)")
} catch credError.emptyUsername {
    print("username empty")
} catch credError.emptyPassword {
    print("pass empty")
} catch credError.wrongCred {
    print("wrong creds")
}

