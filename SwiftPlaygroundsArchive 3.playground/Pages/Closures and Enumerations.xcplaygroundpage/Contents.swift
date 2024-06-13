//: Closure and Enumeration

import Foundation



/**
Closures in Swift
Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift can capture and store references to any constants and variables from the context in which they are defined. This is known as closing over those constants and variables, hence the name "closures".

Advantages of Closures
Readability and Maintainability: Closures allow for cleaner and more readable code, especially when dealing with asynchronous tasks or callback functions.
Functional Programming: Closures enable a functional programming style in Swift, which can lead to more predictable and testable code.
Encapsulation: They allow you to encapsulate functionality within a single block of code that can be passed around and reused.
Deferred Execution: Closures can be used to defer execution of code until a later time.
Custom Control Structures: Closures make it easier to create custom control structures like map, filter, and reduce.
 */


// 1. Basic Swift Closures

let sayHello = {
    print("Hello, World!")
}
sayHello()

//: 2. Closure with Parameters
let add: (Int, Int) -> Int = { (a, b) in
    return a + b
}
let result1 = add(5, 3)
print(result1) // Output: 8


//: 3. Closure as a Function Parameter

func performOperation(_ i: Int, _ j: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(i, j)
}
let result2 = performOperation(5, 3, operation: { (i, j) in
    return i * j
})
print(result2) // Output: 15



//: 4. Trailing Closure Syntax

func performOp(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}
let result3 = performOp(5, 3) { (a, b) in
    return a - b
}
print(result3) // Output: 2


//: 5. Capturing Values
func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
    }
    return incrementer
}
let incrementByTwo = makeIncrementer(incrementAmount: 2)
print(incrementByTwo()) // Output: 2
print(incrementByTwo()) // Output: 4



/*
 
 Enumerations in Swift
 Enumerations define a common type for a group of related values and enable you to work with those values in a type-safe way within your code.

 Advantages of Enumerations
 Type Safety: Enumerations ensure that only valid values are used, increasing the type safety of your code.
 Clarity and Readability: Enumerations make the code more readable and easier to understand by using meaningful names instead of arbitrary values.
 Pattern Matching: Swift's powerful pattern matching with switch statements works seamlessly with enumerations, making it easier to handle different cases.
 Associated Values: Enumerations can store associated values, allowing you to attach additional information to each case.
 Namespace: Enums can group related values under a single umbrella, making the code cleaner and more organized.


 */

//: 1. Basic Enumeration

enum DirectionT {
    case north
    case south
    case east
    case west
}
let currentD = DirectionT.north


//: 2. Enumeration with Associated Values

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
let productBarcode = Barcode.upc(8, 85909, 51226, 3)


//: 3. Enumeration with Raw Values
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
let earthOrder = Planet.earth.rawValue // Output: 3


//: 4. Enumeration with Switch Statement

enum Direction {
    case north
    case south
    case east
    case west
}

let direction = Direction.east

switch direction {
case .north:
    print("Heading North")
case .south:
    print("Heading South")
case .east:
    print("Heading East")
case .west:
    print("Heading West")
}


// Enumeration with Methods

enum TrafficLight {
    case red, yellow, green

    func description() -> String {
        switch self {
        case .red:
            return "Stop"
        case .yellow:
            return "Caution"
        case .green:
            return "Go"
        }
    }
}

let light = TrafficLight.red
print(light.description()) // Output: Stop


