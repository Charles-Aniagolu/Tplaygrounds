//: Protocols and Protocol Programming

import Foundation


/*
 
 What is a Swift Protocol?
 In Swift, a protocol defines a blueprint of methods or properties that can be adopted by classes,
 structures, or enumerations. Think of it as a contract that specifies certain requirements.
 When a type (like a class) conforms to a protocol, it promises to provide actual implementations for those requirements.

 Here are the key points about protocols:

 Blueprints: Protocols define what methods or properties a type should have, without specifying their actual implementation.
 
 
 */



//Deep Dive into protocols and Protocol Oriented Programming

import Foundation
import UIKit



// What is a Swift Protocol?
/* In Swift, a protocol defines a blueprint of methods or properties that can be adopted by classes,
structures, or enumerations. Think of it as a contract that specifies certain requirements.
When a type (like a class) conforms to a protocol, it promises to provide actual implementations for those requirements.
*/



// Example 1 - A struct that conforms to a protocol

protocol PersonProtocol {
    var name: String { get }
    var age: Int  { get }
}

struct Person: PersonProtocol, CustomStringConvertible {
    var name: String
    var age: Int
    
    // CustomStringConvertible implementation
    var description: String {
        return "Name: \(name), Age: \(age)"
    }
}

let person = Person(name: "Donald", age: 73)
print(person)  // Output: Name: Donald, Age: 73

// Car Protocol with Instance Properties:

protocol CarProtocol {
    var wheels: Int { get }
    var hasfourDoors: Bool { get }
    var color: String { get }
}

struct Sedan: CarProtocol {
    let wheels: Int
    let hasfourDoors: Bool
    let color: String
}

// Example Usage
let mySedan = Sedan(wheels: 4, hasfourDoors: true, color: "Blue")
print("My sedan has: \(mySedan.wheels) wheels, \(mySedan.hasfourDoors ? "four" : "two") doors, and is \(mySedan.color)")

// Enum that conforms to a protocol

protocol CompassDirectionProtocol {
    static var allDirections: [Self] { get }
}

enum CompassDirection: CaseIterable {
    case north
    case south
    case east
    case west
    
    // CompassDirection conforms to Protocol by creating allCases property CaseIterable
    
    static var allCases: [CompassDirection] {
        return [.north, .south, .east, .west]
    }
}

print("All compass directions:")
for direction in CompassDirection.allCases {
    print(direction)
}

// Type Alias that conforms to a protocol

typealias Numbers = (Int, Int)

func < (lhs: Numbers, rhs: Numbers) -> Bool {
    return lhs.0 < rhs.0 && lhs.1 < rhs.1
}

let numbers1: Numbers = (3, 5)
let numbers2: Numbers = (2, 8)
let numbers3: Numbers = (3, 6)

print(numbers1 < numbers2) // Output: false
print(numbers1 < numbers3) // Output: true

// Defining the Shape protocol

protocol Shape {
    var area: Double { get }
    var perimeter: Double { get }
}

// Implementing the Circle struct conforming to the Shape protocol

struct Circle: Shape {
    let radius: Double
    
    var area: Double {
        return Double.pi * radius * radius
    }
    
    var perimeter: Double {
        return 2 * Double.pi * radius
    }
}

struct Square: Shape {
    let side: Double
    
    var area: Double {
        return side * side
    }
    
    var perimeter: Double {
        return 4 * side
    }
}

// Implementing the Rectangle struct conforming to the Shape protocol

struct Rectangle: Shape {
    let width: Double
    let height: Double
    
    var area: Double {
        return width * height
    }
    
    var perimeter: Double {
        return 2 * (width + height)
    }
}

// Creating instances of Circle and Rectangle
let circle = Circle(radius: 5.0)
let rectangle = Rectangle(width: 4.0, height: 6.0)

// Printing properties of Circle
print("Circle:")
print("Radius: \(circle.radius)")
print("Area: \(circle.area)")
print("Perimeter: \(circle.perimeter)")

// Printing properties of Rectangle
print("\nRectangle:")
print("Width: \(rectangle.width), Height: \(rectangle.height)")
print("Area: \(rectangle.area)")
print("Perimeter: \(rectangle.perimeter)")

// Defining Protocols representing basic behaviors
protocol Animal {
    var name: String { get }
    func makeSound()
}

struct Dog: Animal {
    let name: String
    
    func makeSound() {
        print("Woof!")
    }
}

struct Cat: Animal {
    let name: String
    
    func makeSound() {
        print("Meow!")
    }
}

let dog = Dog(name: "Nappi")
let cat = Cat(name: "Merkku")

print(dog.name)  // Output: Nappi
print(cat.name)  // Output: Merkku

// Protocol Inheritance:

// Define the base protocol
protocol Vehicle {
    var numberOfWheels: Int { get }
}

// Define a protocol inheritance from Vehicle
protocol Car: Vehicle {
    var brand: String { get }
}

// Define another protocol inheriting from Vehicle
protocol Bike {
    var hasBasket: Bool { get }
}

protocol Motorcycle: Bike {
    var hasSideCar: Bool { get }
}

// Implement a struct conforming to Motorcycle
struct HondaCBR: Motorcycle {
    var numberOfWheels: Int = 2
    var hasBasket: Bool = false
    var hasSideCar: Bool = false
    var brand: String = "Honda"
}

// Call and print the properties
let hondaCBR = HondaCBR()
print("Brand: \(hondaCBR.brand)")
print("Number of Wheels: \(hondaCBR.numberOfWheels)")
print("Has Basket: \(hondaCBR.hasBasket)")
print("Has Sidecar: \(hondaCBR.hasSideCar)")

// Define a protocol
protocol Printable {
    func printInfo()
}

// Extend the protocol to provide a default implementation for the printInfo method
extension Printable {
    func printInfo() {
        print("Default implementation of printInfo")
    }
}

// Conform a struct to the protocol
struct Book: Printable {
    func printInfo() {
        print("Printing book information...")
    }
}

// Protocol Oriented-Programming

// Protocol Definition
protocol Greet {
    var name: String { get } // Gettable property
    func message()
}

// Conforming Class
class Employee: Greet {
    var name = "Perry" // Implementation of gettable property
    
    func message() {
        print("Good Morning, \(name)!")
    }
}

// Usage
let employee1 = Employee()
employee1.message() // Output: "Good Morning, Perry!"

// Define the struct conforming to Hashable protocol
struct City: Hashable {
    let name: String  // Changed from var to let
    let population: Int  // Changed from var to let
}




//----------------------------------------------------------






// Define the Taggable protocol
protocol Taggable {
    var name: String { get set }
}

// Modify the Tag struct to conform to the Taggable protocol
struct Tag: ExpressibleByStringLiteral, Taggable {
    var name: String
    
    init(stringLiteral value: String) {
        name = value
    }
}

// Protocol defining addition with an associated property
protocol Sum {
    var operand1: Int { get }
    var operand2: Int { get }
    func addition()
}

// Protocol defining multiplication with an associated property
protocol Multiplication {
    var factor1: Int { get }
    var factor2: Int { get }
    func multiply()
}

// Class conforming to both Sum and Multiplication protocols
class Calculators: Sum, Multiplication {
    var operand1: Int
    var operand2: Int
    var factor1: Int
    var factor2: Int
    
    init(operand1: Int, operand2: Int, factor1: Int, factor2: Int) {
        self.operand1 = operand1
        self.operand2 = operand2
        self.factor1 = factor1
        self.factor2 = factor2
    }
    
    func addition() {
        let result = operand1 + operand2
        print("Result of addition: \(result)")
    }
    
    func multiply() {
        let result = factor1 * factor2
        print("Result of multiplication: \(result)")
    }
}

// Usage
let calc = Calculators(operand1: 5, operand2: 3, factor1: 4, factor2: 6)
calc.addition()   // Output: Result of addition: 8
calc.multiply()   // Output: Result of multiplication: 24

// Protocol defining a Drawable and Colorful
protocol Drawable {
    func draw()
}

protocol Colorful {
    var color: String { get set }
}

// Struct conforming to both Drawable and Colorful protocols
struct ColoredRectangle: Drawable, Colorful {
    var color: String
    
    // Implementing the draw() method
    func draw() {
        print("A rectangle with color: \(color)")
    }
}

// Example usage
let coloredRect = ColoredRectangle(color: "Blue")
coloredRect.draw()  // Output: A rectangle with color: Blue
