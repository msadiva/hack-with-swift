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


func comute(distance : Int, using vehicle : Car2) {
    
    if vehicle.estimateTime(for: distance) > 100 {
        
        print ("That's too slow. I'll try a different vehicle")
    } else {
        vehicle.travel(distance : distance)
    }
}

let car2 = Car2()

comute(distance : 100, using : car2)

