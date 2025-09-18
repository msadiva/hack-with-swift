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


