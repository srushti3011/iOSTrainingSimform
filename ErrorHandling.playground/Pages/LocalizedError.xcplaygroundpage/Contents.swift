//: [Previous](@previous)

import Foundation

//: [Next](@next)

enum errorFetching: LocalizedError {
    case serverDown
    case wrongReqBody
    
    var errorDescription: String {
        switch self {
        case .serverDown:
            return "Server is down"
        case .wrongReqBody :
            return "Wrong request body"
        }
    }
    
//    var failureReason: String? {
//        switch self {
//        case .serverDown:
//            return
//        }
//    }
}

func makeReq() throws {
    let serverStatus = false
    let reqBody = true
    if !serverStatus {
//        throw NSError(domain: "", code: 123)
        throw errorFetching.serverDown
        defer {
            print("defer")
        }
    }
    else if !reqBody {
        throw errorFetching.wrongReqBody
    }
    else{
        print("Fetching done")
    }
}

do {
    try makeReq()
}
catch let error as errorFetching{
    switch error {
    case .serverDown:
        print(error.errorDescription)
    case .wrongReqBody:
        print(error.errorDescription)
    }
}
//catch {
//    print("error")
//}
