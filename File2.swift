// File 2

import Foundation
import Cocoa


// managing errors in swift


enum PasswordError : Error {
    case short, obvious
}


// throws means this fn might throw an error

func verifyPassword(_ pwd : String) throws -> String {
    
    if pwd.count < 5 {
        throw PasswordError.short
    }

    else if pwd == "12345" {
        throw PasswordError.obvious
    }

    else {
        return "Decent Password"
    }
}



var pwd = "1234"


// using do try and catch 

do {

    let res = try verifyPassword(pwd)
    print (res)
} catch PasswordError.short {
    print ("Password is too short")
} catch PasswordError.obvious {
    print ("Password is too obvious")
}

//The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches: You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.If you can’t find the square root, throw a “no root” error.


enum MathError : Error {
    case lower_bound, upper_bound
}


func find_sqrt(_ num : Int) throws -> Int {
    

    if num < 1 {
        throw MathError.lower_bound
    } 
    else if num > 1000 {
        throw MathError.upper_bound
    }

    else {

        var low = 1
        var high = num
        var ans = low

        while low <= high {

            let mid = (low + high) / 2
            let sq = mid*mid 

            if sq == num {
                return mid
            }

            else if sq < num {
                ans = mid
                low = mid + 1
            }

            else {
                high = mid - 1
            }
        }
        return ans
    }   
}

do {

    let res = try find_sqrt(10001)
    print (res)
}   
catch MathError.lower_bound {
    print ("Please enter a number greater than 0")
}
catch MathError.upper_bound {
    print ("Please enter a number less than equal to 1000")
}

// Closures - type of lambda functions in python

let greet = { (name : String) -> String in 
    return "Hello \(name)"
}

print (greet("Sadiva"))


func makeIncrement(by amount : Int) -> () -> Int {
    
    var total = 0
    return {
        total += amount
        return total
    }
}

let addfive = makeIncrement(by : 5)

print (addfive())
print (addfive())


// So, in is used to mark the end of the parameters and return type – everything after that is the body of the closure itself.

let team = ["sadiva", "sanjay", "alka"]

let captain = team.sorted(by : { (name1: String, name2: String) -> Bool in 
    if name1 == "alka" {
        return true
    } else if name2 == "sanjay" {
        return false
    }

    return name1 < name2
})

print (captain)
