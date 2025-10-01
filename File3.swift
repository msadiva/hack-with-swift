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

// creating a class in swift 

class Game3 {
    
    var score = 0 {

        didSet {

            print ("Score is now \(score)")
        }
    }
}

var gm = Game3()

gm.score += 50

// inheritance 

class Employee3 {
    
    let hours : Int 

    init(hours : Int) {
        
        self.hours = hours
    }

    func printSummary() {
        
        print ("I work \(self.hours) a day")
    }
}

class Developer : Employee3 {

    func work() {
        print ("I am writing code for \(self.hours) hours")
    }
}

class Manager : Employee3 {

    func work() {
        
        print ("I am managing my team everyday for \(self.hours) hours")
    }

    override func printSummary() {
        print ("I'm a great manager")
    }
}

let robert = Developer(hours : 8)
let joseph = Manager(hours : 10)

robert.work()
joseph.work()
joseph.printSummary()


// initializers in class

class Vehicle {

    let isElectric : Bool

    init(isElectric : Bool) {
        
        self.isElectric = isElectric
    }
}

class Car : Vehicle {

    let isConvertible : Bool

    init(isElectric : Bool, isConvertible : Bool) {
        
        self.isConvertible = isConvertible

        super.init(isElectric : isElectric)
    }
}


let teslax = Car(isElectric : false, isConvertible : true)

// deinitializer in class


class User4 {

    let id : Int

    init(id : Int) {
        
        self.id = id
    }

    deinit{
        
        print ("User ID - \(id), I'm Dead")
    }
}

for i in 1...3 {
    let user = User4(id : i)

    print ("User \(i) is in control")
}
