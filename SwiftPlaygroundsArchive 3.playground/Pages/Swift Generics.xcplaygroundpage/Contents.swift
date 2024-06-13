//: Swift Generics


import Foundation



// Example 1: Generic function to swap values of two variables
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

// Usage of swapValues function
var num1 = 5
var num2 = 10
swapValues(&num1, &num2)
print("Swapped values: \(num1), \(num2)")

// Example 2: Generic function to concatenate two values into a string
func concatenate<T, U>(_ value1: T, _ value2: U) -> String {
    return "\(value1), \(value2)"
}

// Usage of concatenate function
let str1 = "Hello"
let str2 = "World!"
let concatenatedResult = concatenate(str1, str2)
print("Concatenated result: \(concatenatedResult)")
