//: Swift Pass by Value and Reference

import Foundation



// Structs (Passed by Value)
struct Point {
    var x: Double
    var y: Double
}

var point = Point(x: 2.0, y: 3.0)
var newPoint = point
newPoint.x = 5.0
print("Original point: (\(point.x), \(point.y))")


// Enums (Passed by Value)
enum Direction {
    case north, south, east, west
}

var currentDirection = Direction.north
var newDirection = currentDirection
newDirection = .east
print("Current direction: \(currentDirection)")



// Classes (Passed by Reference)
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func celebrateBirthday() {
        age += 1
        print("\(name) celebrated a birthday! Now \(age) years old.")
    }
}

let personA = Person(name: "John", age: 20)
var personB = personA
personB.name = "Jane"
personA.celebrateBirthday()


// Functions (Reference Type)
func add(_ a: Int, _ b: Int) -> Int{
    return a + b
}

let sumResult = add(3, 4)
print("Sum: \(sumResult)")

// Computed Properties (Calculated Values)
struct Circle {
    var radius: Double
    
    var area: Double {
        return Double.pi * radius * radius
    }
}

let myCircle = Circle(radius: 5.0)
print("Area of the circle: \(myCircle.area)")

// Error Handling (Optional Type)
func divide(_ a: Double, by b: Double) -> Double? {
    guard b != 0 else {
        print("Error: Cannot divide by zero!")
        return nil
    }
    return a / b
}

if let result = divide(10.0, by: 2.0) {
    print("Result of division: \(result)")
}

// Testing and Validation (Assert)
func square(_ x: Double) -> Double {
    assert(x >= 0, "Input must be non-negative for square root calculation.")
    return x * x
}

let validSquare = square(4.0)
print("Valid square: \(validSquare)")

// Clearer Separation (Organization)
// -------------------------------
// Additional Functions

func greet(name: String) {
    print("Hello, \(name)!")
}

greet(name: "Alice") // Output: Hello, Alice!
