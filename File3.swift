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
