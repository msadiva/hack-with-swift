// creating classes in Swift

struct Employee {

    let name : String
    var vacationRemaining : Int


    mutating func takeVacation(days : Int) -> Void {
        
        if vacationRemaining > days {
            
            vacationRemaining -= days
            print ("Vacation Allowed")
            print ("Days Remaning - \(vacationRemaining)")
        }  else {
            
            print ("Vacation Not Allowed")

        }

    }
}


var data = Employee(name : "Sadiva", vacationRemaining : 10)

data.takeVacation(days : 15)


// using getter and setter 


struct Employee2 {

    let name : String
    var vacationCount = 0
    var vacationAllocated : Int 


    var vacationRemaining : Int {
        
        get {
            vacationAllocated - vacationCount
        }

        set {
            
            vacationAllocated = vacationCount + newValue
    
        }

    }

}


var data2 = Employee2(name : "Sadiva", vacationAllocated : 14)

data2.vacationCount += 4
print (data2.vacationRemaining)
data2.vacationRemaining = 6

print (data2.vacationRemaining)


// did set helps to print the value everytime the value is changed


struct Game {

    var score = 0 {

        didSet {
            
            print ("Score is now \(score)")

        }
    }
}



var player = Game()

player.score += 10

player.score += 5

player.score -= 7


// initializer in Swift


struct Game2 {

    let name : String
    var number : Int

    init(name : String) {
        
        self.name = name
        self.number = Int.random(in: 1...50)
    }
}


var pl = Game2(name : "Sadiva")

print (pl.number)


// access controls in swift - private, public and fileprivate


struct Bank {
    
    private var funds = 0 

    mutating func deposit(amount : Int) {

        funds += amount
        print ("Amount Deposited. Current Balance = \(funds)")
    }

    mutating func withdraw(amount : Int) -> Bool {
        
        if funds < amount {
            return false
        } else {
            
            funds -= amount
            return true
        }
    }
}

var acc = Bank()

acc.deposit(amount : 1000)

let success = acc.withdraw(amount : 2000)

print (success)


// we can use static if we don't want something to exist uniquely 

struct School {

    static var headCount = 0

    static func add(student : String) {
        print ("\(student) joined the school. Congratulations")
        headCount += 1
    }
}

print (School.headCount)

School.add(student : "Sadiva")

print (School.headCount)

// here’s a small task for you: create a struct to store information about a car, including its model, number of seats, and current gear, then add a method to change gears up or down. Have a think about variables and access control: what data should be a variable rather than a constant, and what data should be exposed publicly? Should the gear-changing method validate its input somehow?

struct CarInfo {

    let car : String
    let model : String
    var gear : Int

    init(car : String, model : String, gear : Int) {
            
        self.car = car
        self.model = model
        self.gear = gear
        }

    mutating func changeGear(val : Int) {
        
        self.gear += val

        print ("New Gear = \(self.gear)")
    }

}

var car = CarInfo(car : "BMW", model :"X1", gear : 6)

print (car.car, car.model, car.gear)

car.changeGear(val : 2)
