class Animal {

    let legs: Int

    init(legs: Int) {
        // Initialize the 'legs' property of the Animal class
        self.legs = legs
    }

    func printSummary() {
        // A simple method to print the animal's legs count
        print("This animal has \(self.legs) legs")
    }
}


class Dog: Animal {

    // The Dog's initializer must call the superclass (Animal) initializer
    override init(legs: Int) {
        super.init(legs: legs)
    }

    func speak() {
        print("BOW BOW BOW")
    }
}


class Cat: Animal {

    let isTame: Bool

    init(legs: Int, isTame: Bool) {
        // Initialize the Cat's stored property first (isTame)
        self.isTame = isTame
        // Then call the superclass (Animal) initializer
        super.init(legs: legs)
    }

    func speak() {
        print("MEOW MEOW MEOW")
    }
}

// --- Object Instantiation and Usage ---


let corgi = Cat(legs: 4, isTame: false)
let persian = Dog(legs: 4)

// Examples of calling the methods:
persian.printSummary() // Output: This animal has 4 legs
persian.speak()        // Output: BOW BOW BOW

corgi.printSummary()   // Output: This animal has 4 legs
corgi.speak()          // Output: MEOW MEOW MEOW
// You can also access the Cat's unique property:
print("Is corgi tame? \(corgi.isTame)") // Output: Is corgi tame? false
