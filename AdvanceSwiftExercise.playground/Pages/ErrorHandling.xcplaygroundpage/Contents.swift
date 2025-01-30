//: [Previous](@previous)

import Foundation

//: [Next](@next)

// Error Handling

// 1

enum PasswordCheck: Error {
    case LengthImproper(String)
    case PasswordEmpty(String)
}

func validatePassword(pass: String) throws(PasswordCheck) {
    if(pass.isEmpty) {
        throw PasswordCheck.PasswordEmpty("Empty password")
    } else if(pass.count<8) {
        throw PasswordCheck.LengthImproper("Password too short")
    } else {
        print("Ok")
    }
}

do {
    try validatePassword(pass: "")
} catch PasswordCheck.LengthImproper(let message) {
    print(message)
} catch PasswordCheck.PasswordEmpty(let message) {
    print(message)
} catch {
    print("Some error")
}

// 2

enum QuantityCheck: Error {
    case NotAvailable
}

func checkQuantity(desiredQuantity: Int) throws(QuantityCheck) {
    let availableQuantity = 50
    if availableQuantity < desiredQuantity {
        throw QuantityCheck.NotAvailable
    }
}

func placeOrder(quantityAsked: Int) {
    print("trying to place order")
    do {
        try checkQuantity(desiredQuantity: quantityAsked)
        print("Your desired quantity available")
        print("Order placed")
    } catch QuantityCheck.NotAvailable {
        print("Sorry User, the desired quantity not available")
    } catch {
        print("Some error")
    }
}

placeOrder(quantityAsked: 50)
