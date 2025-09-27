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
