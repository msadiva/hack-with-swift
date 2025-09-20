//
//  File.swift
//  hackswift
//
//  Created by Sadiva Madaan on 31/08/25.
//

import Foundation
import Cocoa


var greeting = "hello mr sadiva madaan"

let name = "sadiva"
//name = "sanjay" // this won't work

let movie = """
we watched
an amazing movie
"""

// find length of the string

print (movie.count)

print (greeting.count)

// converting everything to uppercase

print (movie.uppercased())

// checking for suffix and prefix

print (greeting.hasSuffix("amazing Movie"))

print (greeting.hasPrefix("we watched"))


let number = 100

print (number, number.isMultiple(of: 3))


let num1 = 0.1
let num2 = 0.2

let num3 = num1 + num2

let num4 = 4

let num5 = Double(num4) + num1






// playing with boolean

var authenticated = false

print (authenticated)

print (!authenticated)

authenticated.toggle()
print (authenticated)



// playing with string interpolation

var newname = "sadiva"

let age = 26


let combined = "Hello, My name is \(newname) and my age is \(age) "

print (combined)


//Creates a constant holding any temperature in Celsius.
//Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
//Prints the result for the user, showing both the Celsius and Fahrenheit values.



var celsius_temperature = 35

var farh_temperature = ((celsius_temperature*9) / 5) + 32

print ("Temperature in celsius is \(celsius_temperature)")

print ("Temperature in fahrenheit is \(farh_temperature)")


// Data Structures in Swift

// Array - unlike python, we cannot store values in array of different type

// actually we can if we use [Any] while creating the array

// var arr = ["Sadiva", 15]

//print (arr)

var arr = [String]()

arr.append("Sadiva")
arr.append("Sanjay")
arr.append("Alka")

print (arr[0], arr.count)

arr.remove(at: 0)

print (arr)

var arr2 = [Any]()

arr2.append("Sadiva")

arr2.append(12)

print (arr2)


print (arr.sorted())

print (arr.reversed())

// now explorring dictionary 

var info = [String:Any]()

info["name"] = "Sadiva"

info["age"] = 26

info["location"] = "Delhi"

print (info)

 // print(info["name"]) 

print (info["income", default : "N/A"])

// exploring sets

var infoset = Set<AnyHashable>()

infoset.insert("Sadiva")

infoset.insert("Sanjay")

infoset.insert(26)

print (infoset)


print (infoset.contains("Alka"))

// playing around with enum now 

enum weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day1 = weekday.monday 

print (day1)

day1 = .tuesday

print (day1)

// playing around with type annotation 

let myname : String 

myname = "Sadiva Madaan"
print (myname)

var score: Double 

score = 2

print (score)


// This time the challenge is to create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

var testarr = [String]()

testarr.append("Sadiva")

//print (testarr)

testarr.append("Sanjay")

testarr.append("Alka")

testarr.append("Sadiva")

print (testarr.count)

// convert arr to set

var testset = Set(testarr)

print (testset)

print (testset.count)

// if condition in swift 

var username = "sadivam"

if username.isEmpty {
    username = "anonymous"
    print ("username was empty")
}

print (username)


var score2: Double

score2 = 85.5

if score2 >= 90 {
    print ("A GRADE")
} else if score2 >= 80 {
    print ("B GRADE")
} else {
    print ("C GRADE")
}

// || - or operator and && - and operator

let userage = 16

let parentConsent = false


if userage >= 18 || parentConsent {
    print ("User is allowed to play videogames")
} else {
    print ("User is not allowed to play videogames")
}

// using switch instead of if else 

enum Weather {
    case sunny, winter, snow, rainy, unknown
}

var day = Weather.sunny 

print (day)

switch day {

case .sunny:
    print ("It should be a sunny day")
case .winter:
    print ("It should be a cold day")
case.snow:
    print ("It should be a snowy day")
case.rainy:
    print ("It should be a rainy day")
case.unknown:
    print ("Unknown day")
}


// using fallthrough implements the following cases too 


let scorecard = 800

switch scorecard {

case 800:
    print ("Score = 800")
    fallthrough
case 700:
    print ("Score = 700")
    fallthrough
default:
    print ("Default")
}




