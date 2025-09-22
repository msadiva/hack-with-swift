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

