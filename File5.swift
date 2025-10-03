// usage of protocols 

protocol Vehicle {
    
    func estimateTime(for distance : Int) -> Int
    func travel(distance : Int)
}

struct Car2 : Vehicle {

    func estimateTime(for distance : Int) -> Int {
    
        return distance / 50

    }

    func travel(distance : Int) {
        print ("I'm driving \(distance) km")
    }
}


func comute(distance : Int, using vehicle : Vehicle) {
    
    if vehicle.estimateTime(for: distance) > 100 {
        
        print ("That's too slow. I'll try a different vehicle")
    } else {
        vehicle.travel(distance : distance)
    }
}

let car2 = Car2()

comute(distance : 100, using : car2)


struct Bicycle : Vehicle {

    func estimateTime(for distance : Int) -> Int {
        
        return distance / 10

    }

    func travel(distance : Int) {
        
        print ("I'm cycling \(distance) km")
    }
}

let bike = Bicycle()

comute(distance : 70, using : bike)

func getRandomInt() -> some Equatable {
    
    return Int.random(in : 1...10)
}

print (getRandomInt() == getRandomInt())

// using extensions
import Foundation


extension String {
    
    func trimmed() -> String {
        
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var quote = "   The truth is rarely pure and never simple   "

let trimmed = quote.trimmed()

print (trimmed)

extension Numeric {
    
    func squared() -> Self {
        
        return self * self
    }
}

// difference between self and Self 
// self - current value
// Self - current type

var num : Double = 0.5

print (num.squared())

protocol Housing {
    
    var type : String { get }
    var room : Int { get }
    var cost : Double { get }
    var agent : String { get }
    func sales_summary()
}

struct Office : Housing {

    let type : String
    let room : Int
    let cost : Double
    let agent : String

    func sales_summary() {
        
        print ("Summary of \(type)")

        print ("No of rooms : \(room)")

        print ("Total Cost : \(cost)")

        print ("Agent Name : \(agent)")
    }
}

var office = Office(type : "Office", room : 10, cost : 150000.500, agent : "Sanjay")

office.sales_summary()
