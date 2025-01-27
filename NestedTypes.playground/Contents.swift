import Cocoa

// nested types

class Person{
    var name: String
    var favColor: Color
    var hobby: Hobby

    enum Color{
        case Black
        case White
        case Violet
    } // nested enum
        
    enum Hobby{
        case drawing
        case dancing
        case reading
    } // nested enum
    
    init(name: String, favColor: Color, hobby: Hobby) {
        self.name = name
        self.favColor = favColor
        self.hobby = hobby
    }
    
    func display() {
        print(self.name, self.getColor(), self.getHobby())
    }
    
    func getColor() -> String {
        switch self.favColor {
            case .Black :
                return "black"
            case .White:
                return "white"
            case .Violet:
                return "violet"
        }
    }
    
    func getHobby() -> String {
        switch self.hobby {
        case .drawing:
            return "drawing"
        case .dancing:
            return "dancing"
        case .reading:
            return "reading"
        }
    }
}

var person1 = Person(name: "Mally", favColor: Person.Color.Black, hobby: Person.Hobby.dancing)
person1.display()
person1.favColor = Person.Color.Violet
person1.hobby = Person.Hobby.drawing
person1.display()

// -----------------------------------------------------------------------------------------------------------------
struct Business{
    var name: String
    var location: Location
    var finances: Finances
    var noOfEmployees: Int
    
    enum Location{
        case Surat
        case Mumbai
        case Ahmedabad
    }
    
    struct Finances{
        var revenue: Int
        var profit: Int
        var debt: Int
        
        
        
    }

    func display(){
        print(self.name, self.finances.revenue, self.finances.profit, self.finances.debt, self.noOfEmployees, self.getLocation())
    }
    
    func getLocation() -> String{
        switch self.location {
        case .Surat:
            return "Surat"
        case .Mumbai:
            return "Mumbai"
        case .Ahmedabad:
            return "Ahmedabad"
        }
    }
    
    mutating func modifyFinances(newFinances: Business.Finances){
        self.finances.debt = newFinances.debt
        self.finances.profit = newFinances.profit
        self.finances.revenue = newFinances.revenue
    }
}

var financesOne = Business.Finances(revenue: 20, profit: 50, debt: 5)
var businessOne = Business(name: "M Solutions", location: Business.Location.Mumbai, finances: financesOne, noOfEmployees: 60)
businessOne.display()
businessOne.location = Business.Location.Surat
var changeToFinances = Business.Finances(revenue: 25, profit: 100, debt: 45)
businessOne.modifyFinances(newFinances: changeToFinances)
businessOne.display()

// -----------------------------------------------------------------------------------------------------------------------------
//class Outer{
//    var a: Int
//    init(a: Int) {
//        self.a = a
//    }
//    class Inner{
//        func test() {
//            print(self.a)
//        }
//    }
//}
