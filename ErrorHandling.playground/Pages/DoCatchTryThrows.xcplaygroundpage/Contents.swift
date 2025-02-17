//: [Previous](@previous)

import Foundation

//: [Next](@next)

enum AreaCalculate: Error {
    case lengthImproper(String)
    case widthImproper(String)
}

func calculateArea(length: Int, width: Int) throws(AreaCalculate) -> Int { //adding the type of error to be thrown
    defer {
        print("You can do the final work here in defer")
    }
    if length<0 {
        throw AreaCalculate.lengthImproper("Length is improper")
    } else if width<0 {
        throw AreaCalculate.widthImproper("Width is improper")
    } else {
        return length*width
    }
}

// handlingScreenInput not a throwing function

//func handlingScreenInput() {
//    var len = -5
//    var wid = 30
//    do {
//        let area = try calculateArea(length: len, width: wid)
//        print(area)
//    } catch AreaCalculate.lengthImproper(let message) {
//        print("\(message)")
//    } catch AreaCalculate.widthImproper(let message) {
//        print("\(message)")
//    } catch {
//        print("Unexpected error")
//    }
//}
//
//handlingScreenInput()

// -------------------------------------------------------------------------------

// handlingScreenInput is made a throwing function, error propagation will occur

func handlingScreenInput() throws {
    var len = -8
    var wid = 40
    let area = try? calculateArea(length: len, width: wid)
    print(area)
}

do {
    let area = try handlingScreenInput()
} catch AreaCalculate.lengthImproper(let message) {
        print("\(message)")
} catch AreaCalculate.widthImproper(let message) {
        print("\(message)")
} catch {
    print("Unexpected error")
}
