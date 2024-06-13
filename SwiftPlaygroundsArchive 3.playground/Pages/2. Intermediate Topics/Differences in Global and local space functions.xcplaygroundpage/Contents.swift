//: Differences in Global and Other functions

import Foundation




// Global Function
func greet(name: String) {
    print("Hello, \(name)!")
}

// Ordinary Function
struct Person {
    func sayHello() {
        print("Hello!")
    }
}

// Using the Functions
greet(name: "Alice")  // Calling the global function directly
let person = Person()
person.sayHello()     // Calling the ordinary function as an instance method


// Global Function to Add Two Integers
func add(a: Int, b: Int) -> Int {
    return a + b
}

// Global Function to Multiply Two Integers
func multiply(a: Int, b: Int) -> Int {
    return a * b
}


//String Manipulation Function
// Global Function to Capitalize a String
func capitalize(_ str: String) -> String {
    return str.capitalized
}

// Global Function to Reverse a String
func reverse(_ str: String) -> String {
    return String(str.reversed())
}


// Global Functions and Basic Calculation:
// Global Function to Calculate the Square of an Integer
func square(_ number: Int) -> Int {
    return number * number
}

// Ordinary Function
struct Calculator {
    func square(_ number: Int) -> Int {
        return number * number
    }
}

// Using the Functions
let result1 = square(5)  // Calling the global function directly
print("Square of 5: \(result1)")

let calculator = Calculator()
let result2 = calculator.square(5) // Calling the ordinary function as an instance method
print("Square of 5 using Calculator: \(result2)")


// Global Function to Get the Current Date
func getCurrentDate() -> Date {
    return Date()
}

// Ordinary Function
struct DateUtility {
    func getCurrentDate() -> Date {
        return Date()
    }
}

// Using the Functions
let currentDate1 = getCurrentDate()  // Calling the global function directly
print("Current Date: \(currentDate1)")

let dateUtility = DateUtility()
let currentDate2 = dateUtility.getCurrentDate() // Calling the ordinary function as an instance method
print("Current Date using DateUtility: \(currentDate2)")


// Global Function for String Manipulation
// Global Function to Count the Number of Characters in a String
func countCharacters(in str: String) -> Int {
    return str.count
}

// Ordinary Function
struct StringUtils {
    func countCharacters(in str: String) -> Int {
        return str.count
    }
}

// Using the Functions
let str = "Hello, World!"
let characterCount1 = countCharacters(in: str) // Calling the global function directly
print("Character count: \(characterCount1)")

let stringUtils = StringUtils()
let characterCount2 = stringUtils.countCharacters(in: str) // Calling the ordinary function as an instance method
print("Character count using StringUtils: \(characterCount2)")
