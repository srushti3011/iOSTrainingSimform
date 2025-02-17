//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

protocol display {
    func display()
}

//basic enum

enum WeatherAndTemp: Int, display {
    case Winter = 10
    case Summer = 45
    case Monsoon = 30

    func display(){
        print("enum's display")
    }
}

var weather1 = WeatherAndTemp.Winter
print(weather1.rawValue)
weather1.display()
