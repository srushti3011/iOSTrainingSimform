import UIKit

//lazy properties

class ExpensiveComput {
    var data = "data is found from network operation"
    
    init() {
        print("Initialized ExpensiveComput")
    }
    
    func getData() ->(Void) {
        print(data)
    }
}

class DataFromNetwork {
    lazy var dataFound = ExpensiveComput()
    //lazy properties should always be var
    var noOfData : Int
    
    init(num : Int) {
        print("Initialized DataFromNetwork")
        self.noOfData = num
    }
}

var computeFirst = DataFromNetwork(num : 1)
//the dataFound property won't be initialized yet as it is not used

computeFirst.dataFound
//now the dataFound would be initialized
