//: Complex Types:

import Foundation



/*
   - Arrays
   - Dictionaries
   - Sets
   - Tuples
*/



// Arrays
var myNumbers = [8381, 288, 943, 5114, 9985] // Creating an array
print(myNumbers)

for number in myNumbers{ // Using a For-in Loop
    print(number)
}

for (index, number) in myNumbers.enumerated(){ // Using the enumerated() Method
    print("Elements at index: \(index): \(number)")
}

myNumbers.forEach{ number in // Using forEach Method
    print(number)
}

var index = 0
while index < myNumbers.count{ // Using a While Loop
    print(myNumbers[index])
    index += 1
}

let doubleNumbers = myNumbers.map{ $0 * 2 } // Using High-Order Function
print(doubleNumbers)

// Sets
var programmingLanguage: Set<String> = ["Java", "Swift", "Html", "JavaScript"] // Syntax Structure of Sets
print(programmingLanguage)

for language in programmingLanguage { // For-In Loop
    print(language)
}

for (index, language) in programmingLanguage.enumerated(){ // Enumerated For-In Loop
    print("Index: \(index), Language: \(language)")
}

programmingLanguage.forEach{ language in // ForEach Methods
    print(language)
}

let noOfWallClocks = programmingLanguage.count // Checking if Set is empty
print("Number of programming languages: \(noOfWallClocks)")

if programmingLanguage.isEmpty{
    print("The set is empty")
} else {
    print("The set is not empty")
}

let clocks: Set<String> = ["WallClock", "WristWatch", "TableClock"]
print(clocks.contains("WallClock")) // Checking if elements exist

// Dictionaries
var person = (name: "John", age: 30, isStudent: true) // Syntax Structure of Swift Tuples
print(person)

var fruits: [String] = ["Apple", "Banana", "Orange"] // Array
let firstFruit = fruits[0] // Modifying Elements
fruits[2] = "Grapes"
fruits.append("Kiwi")
let count = fruits.count // Counting elements
print("Number of fruits: \(count)")

for fruit in fruits{ // Iterating through Elements
    print(fruit)
}

// Tuples
let myTuple: (String, Int, Bool) = ("John", 30, true) // Syntax Structure of Swift Tuples
print(myTuple)

let firstName = myTuple.0 // Accessing elements by index
let age = myTuple.1
let isStudent = myTuple.2
print("First Name: \(firstName), Age: \(age), Student: \(isStudent)")

// Enums
enum Result{ // Enums
    case success
    case failure
}

let result1 = Result.failure // Using Enums
print(result1)

let result2 = Result.success
print(result2)

enum Activity{ // Enum Associated Values
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")
print(talking)

let running = Activity.running(destination: "Lukomaki")
print(running)

let singing = Activity.singing(volume: 5)
