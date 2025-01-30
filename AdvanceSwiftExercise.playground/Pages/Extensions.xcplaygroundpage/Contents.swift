//: [Previous](@previous)

import Foundation

//: [Next](@next)

// Extensions

// Make String extension functions

extension String {
    // 1
    func addAtFifthPosition(addThis: Character) -> String {
        if self.count <= 3 {
            return self
        } else if self.count == 4 {
            return self+String(addThis)
        }
        else {
            var strStart = self.index(self.startIndex, offsetBy: 0)
            var strEnd = self.index(self.startIndex, offsetBy: self.count-1)
            
            var endIndFirstPart = self.index(self.startIndex, offsetBy: 3)
            var firstPart = self[strStart...endIndFirstPart]
            
            var startIndSecondPart = self.index(self.startIndex, offsetBy: 4)
            var secondPart = self[startIndSecondPart...strEnd]
            
            return String(firstPart) + String(addThis) + String(secondPart)
        }
    }
    
    // 2
    func replace(to: Character, with: Character) -> String {
        var resultantString = ""
        for (index, value) in self.enumerated() {
            if value==to {
                resultantString+=String(with)
            } else {
                resultantString+=String(value)
            }
        }
        return resultantString
    }
    
    // 3
    func removeWhiteSpaces() -> String {
        var nonSpaceComponents = self.components(separatedBy: " ")
//        print(nonSpaceComponents)
        var resultantString = ""
        for str in nonSpaceComponents {
            resultantString+=str
        }
        return resultantString
    }
    
    // 4
    func countWords() -> Int {
        var words = self.split(separator: " ")
        return words.count
    }
}

var str = "Ahmedabad is in Gujarat"
print(str.addAtFifthPosition(addThis: "%"))
print(str.replace(to: "r", with: "@"))

var str1 = "India is in     Asia"
print(str1.removeWhiteSpaces())
print(str1.countWords())
