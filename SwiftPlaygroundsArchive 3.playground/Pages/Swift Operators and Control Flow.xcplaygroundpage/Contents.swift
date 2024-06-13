//Swift Operators, Control Flow, and Loops

import Foundation


// Arithmetic Operators

let additionResult = 10 + 5     // Addition
let subtractionResult = 20 - 8   // Subtraction
let multiplicationResult = 6 * 4 // Multiplication
let divisionResult = 24 / 3      // Division
let moduluResult = 15 % 7        // Modulus

// Comparison Operators

let isEqual = (10 == 5)         // ==
let isNotEqual = (20 != 8)      // !=
let isGreater = (6 > 4)         // >
let isLess = (24 < 3)           // <
let isGreaterOrEqual = (15 >= 7) // >=

// Logical Operators

let andResult = true && false
let orResult = true || false
let notResult = !true

// Ternary Conditional Operator

var driverLicense = true
driverLicense ? print("Driver's Seat") : print("Passenger's Seat")

// Conditional Statements (if, else, switch)

// If Statement
var learnToCode = true
if learnToCode {
    print("You become a programmer")
}

// Else Statement
var turbulence = false
if turbulence {
    print("Please stay seated")
} else {
    print("You may freely move around")
}

// Else if Statement
var weather = "rainy"
if weather == "sunny" {
    print("Grab some sunscreen")
} else if weather == "rainy" {
    print("Grab an Umbrella")
} else if weather == "snowing" {
    print("Wear your snow boots")
} else {
    print("Invalid weather")
}

// Switch Statement

var secondaryColor = "green"
switch secondaryColor {
case "orange":
    print("Mix of orange and yellow")
case "green":
    print("Mix of blue and yellow")
case "purple":
    print("Mix of red and blue")
default:
    print("This might not be a secondary color.")
}

// Switch Statement: Interval Matching
let year = 1905
var artPeriod: String

switch year {
case 1860...1885:
    artPeriod = "Impressionism"
case 1886...1910:
    artPeriod = "Post Impressionism"
case 1912...1935:
    artPeriod = "Expressionism"
default:
    artPeriod = "Unknown"
}

// Switch Statement: Compound Cases
let service = "Seamless"

switch service {
case "Uber", "Lyft":
    print("Travel")
case "DoorDash", "Seamless", "GrubHub":
    print("Restaurant delivery")
case "Instacart", "FreshDirect":
    print("Grocery delivery")
default:
    print("Unknown service")
}

// Switch Statement: Where Clause
let num = 7

switch num {
case let x where x % 2 == 0:
    print("\(num) is even ")
case let x where x % 2 == 1:
    print("\(num) is odd")
default:
    print("\(num) is invalid")
}

// Loops (for, while, repeat-while)

// Ranges
let zeroToThree = 0...3

// Stride() Function
for oddNum in stride(from: 1, to: 5, by: 2) {
    print(oddNum)
}

// for-in Loop
for char in "hehe" {
    print(char)
}

// continue Keyword
for num in 0...5 {
    if num % 2 == 0 {
        continue
    }
    print(num)
}

// break Keyword
for char in "supercalifragilisticexpialidocious" {
    if char == "c" {
        break
    }
    print(char)
}

// Using Underscore
for _ in 1...3 {
    print("Olé")
}

// while Loop
var counter = 0
var stopNum = Int.random(in: 1...10)

while counter < stopNum {
    print(counter)
    counter += 1
}
print("the stop number is: \(stopNum)")

// do-while Loop
var repeatCount = 3
repeat {
    print("this will be repeated  \(repeatCount) times.")
    repeatCount -= 1
} while repeatCount > 0

// Branching Statements (Break, Continue, Return)

// Break
for i in 1...10 {
    if i == 5 {
        break
    }
    print(i)
}

// Continue in a Loop
for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
    print(i)
}

// Return in a function
func multiplyByTwo(_ number: Int) -> Int {
    return number * 2
}
let result = multiplyByTwo(5)
print(result)

//Guard Statement
func processInput(_ input: String?){
    guard let unwrappedInput = input else {
        print("input is nil. ")
        return
    }
    print("Processing input: \(unwrappedInput)")
}

// If Statements including Else and Else if
let timeOfDay = "morning"
if timeOfDay == "morning" {
    print("Good morning!")
} else if timeOfDay == "afternoon!" {
    print("Good afternoon!")
} else {
    print("Good evening!")
}

// Summary of control flow, loops and early exits
func validateAge(_ age: Int) {
    guard age >= 18 else {
        print("You must be 18 or older.")
        return
    }
    print("Welcome!")
}

// If Statement
let i = 10
if i > 5 {
    print("x is greater than 5")
}

// Guard Statement
func myValidateAge(_ age: Int){
    guard age >= 18 else {
        print("You must be 18 or older.")
        return
    }
    print("Welcome!")
}

// Switch Statement
let day = "Monday"
switch day {
case "Monday":
    print("It's the start of the week.")
default:
    print("It's another day.")
}

// For-in Loop
for number in 1...5 {
    print(number)
}

// While Loop
var count = 0
while count < 5{
    print(count)
    count += 1
}

// Manipulation
var songs = [String]()

let anotherNumbers = Array(arrayLiteral: 1, 2, 3, 4, 5, 6)
