//: Optionals and Error Handling in Swift

import Foundation



/**
 1. Definition
 - Optionals in Swift represent either wrapped value or nil - which indicate the absence of value.
 - It allows variables to hold either a value or nothing at all. Optionals are a powerful feature in
 - Swift that helps handle the potential absence of a value in a type-safe manner.
 - Syntax for declaring optional using "?" symbol.

 
2. Optional Declaration
- var someValue: Int?  //Declaring an optional integer.


 3. Optional Unwrapping:
 - Forced Unwrapping (!): Accessing the value inside an optional using !,
 - but it might lead to a runtime crash if the optional is nil.
 let unwrappedValue = optionalValue!


4. Optional Binding (if let and guard let): Safely unwrapping
- an optional and assigning its value to a constant within
- a conditional statement.
 if let unwrappedValue = optionalValue {
    // Use unwrappedValue
} else {
    // Handle the case where optionalValue is nil
}

 
 
 
5. Nil-Coalescing Operator:
 - Using the ?? operator to provide a default value for an optional if it is nil.
 
 let result = optionalValue ?? defaultValue

 
 6. Implicitly Unwrapped Optionals:

 Declaring optionals that are automatically unwrapped, assuming they will always contain a value after being set initially.
 var implicitlyUnwrapped: String! = "Hello"

 
 7.Optional Chaining:
 
 Accessing properties, methods, and subscripts on an optional that might currently be nil. If the optional is nil, the whole chain fails gracefully.
 
 func process(value: Int?) {
     // ...
 }

 func getValue() -> String? {
     // ...
 }




func getHaterStatus() -> String? {
    return "Hate"
}

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    }else{
        return "Hate"
    }
}



getHaterStatus(weather: "sunny")
getHaterStatus(weather: "stormy")

var status: String?
status = getHaterStatus(weather: "rainy")


func takeHaterAction(status: String){
    if status == "Hate"{
        print("Hating")
    }
}


if let unwrappedStatus = status {
    //unwrappedStatus contains a non-optional value!
}else{
    // in case you want an else block, here you go..
}


 */

/*
// The return Output for this code doesn't make much sense. Optional is needed!

func yearAlbumReleased(name: String) -> Int{
    if name == "Taylor Swift"{return 2006}
    if name == "Fearless" {return 2008}
    if name == "Speak Now" {return 2010}
    if name == "Red" {return 2012}
    if name == "1989" {return 2014}
        
        
    return 0
}
yearAlbumReleased(name: "Lantern")

 */



//Better code is to make the function return either an integer or nil.

/*
func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift"{return 2006}
    if name == "Fearless" {return 2008}
    if name == "Speak Now" {return 2010}
    if name == "Red" {return 2012}
    if name == "1989" {return 2014}
        
        
    return nil
}
yearAlbumReleased(name: "lantern")
*/


// Now that the returns nil, we need to unwrap the result using if let because we need to check
//wether a value exist or not. Force unwrapping optionals "!!

/*
func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift"{return 2006}
    if name == "Fearless" {return 2008}
    if name == "Speak Now" {return 2010}
    if name == "Red" {return 2012}
    if name == "1989" {return 2014}
        
        
    return nil
}

var year = yearAlbumReleased(name: "Red")
if year == nil {
    
    print("There was an error")
    
}else{
    
    print("It was released in \(year!)") //Note the exclamation mark: it means "I'm certain this
   // contains a value, so force unwrap it now."
}
*/
//Optional Chaining - Makes run a code if your optional has a value.


func yearOneAlbumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
        
    }
}


//let album = yearOneAlbumReleased(year: 2006)?.uppercased() //? is the optional chaining.
//Everything after the ? when run if the optional has a value.
//print("The album is  \(album!)")




// The nil Coalescing operator: Example

let album = yearOneAlbumReleased(year: 2001) ?? "unknown"
print("The album is \(album)")

//Example 1. uses Nil Coalescing Optional method

//Checking if a number is even or odd
func checkEvenOdd(_ number: Int) -> String? {
    return number % 2 == 0 ? "Even" : "Odd"
}
let result1 = checkEvenOdd(-1) ?? "invalid input"
print("Number is \(result1)")


// Example 2: Mapping numbers to their squares
func squareNumber(_ number: Int) -> Int? {
    return number > 0 ? number * number : nil
}

//
func square(_ number: Int) -> Int? {
    guard number >= 0 else { return nil }
    return number * number
}

let squaredValue = square(4) ?? -1
print("Squared value: \(squaredValue)")



// Example 3: Determining the season based on the month
func determineSeason(month: Int) -> String? {
    switch month {
    case 1...3: return "Winter"
    case 4...6: return "Spring"
    case 7...9: return "Summer"
    case 10...12: return "Autumn"
    default: return nil
    }
}

func seasonForMonth(_ month: Int) -> String? {
    switch month {
    case 1...3: return "Winter"
    case 4...6: return "Spring"
    case 7...9: return "Summer"
    case 10...12: return "Autumn"
    default: return nil
    }
}



// Example 4: Checking if a character is a vowel
func isVowel(_ char: Character) -> Bool? {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    return vowels.contains(char.lowercased().first ?? Character(""))
}


func ismyVowel(_ character: Character) -> Bool? {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    return vowels.contains(character.lowercased())
}

let charIsVowel = ismyVowel("A") ?? false
print("Is character a vowel? \(charIsVowel)")



// Example 5: Converting a string to an integer
func convertToInt(_ str: String) -> Int? {
    return Int(str)
}



func stringToInt(_ str: String) -> Int? {
    return Int(str)
}

let numberFromString = stringToInt("42") ?? -1
print("Number from string: \(numberFromString)")



/*
- An optional is a type that can either have a value or be nil. To use the
 - value of an optional, you need to unwrap it using one of the following
  - methods1:
 
 Causion:
 - By using optional binding or the nil-coalescing operator, you can handle cases
   where the optional might be nil without causing runtime errors.
 - It provides a safer alternative to forced unwrapping, especially when dealing with uncertain or optional values.


 //Example 1. Shows forced unwrapping "!" is not ideal for optional with Nil value.

var name1: String? = "Alice"
print(name1!.count) // 5
//name1 = nil
//print(name1!.count) // Error message says: Fatal error: Unexpectedly found Nil  while unwrapping an Optional value

 
- Improvement to Example 1: Avoid forced unwrapping when the value can be nil to prevent runtime errors.
-  Instead, use optional binding or nil-coalescing operators.
 */
 
 
 
// Using Nil-Coalescing Operator to reproduce the code in Example 1:

var name1: String? = "Alice"



// Using Nil-Coalescing Operator to provide a default value if name1 is nil

let count = name1?.count ?? -1 // Provide a default value like -1 or any other meaningful default
print(count)



// Setting name1 to nil
name1 = nil

let countAfterNil = name1?.count ?? -1 // Provide a default value
print(countAfterNil)



//Using Optional Binding to reproduce the code in Example 1:
var firstname: String? = "Alice"

if let unwrappedCount = firstname?.count {
    print(unwrappedCount)
} else {
    print("Default value or handle nil case here")  // You can handle the nil case as needed
}

// Setting name1 to nil to simulate the nil case
name1 = nil

if let unwrappedCount = name1?.count {
    print(unwrappedCount)
} else {
    print("Default value or handle nil case here")  // You can handle the nil case as needed
}



/*
 Optional binding: You use ["if let" or "guard let"] to check if an optional has a value and assign it to a new constant.
 This is a safe way to unwrap an optional. For example:
 */



var name: String? = "Alice"
if let unwrappedName = name {
    print(unwrappedName.count)
}else{
    print("name is nil")
}
name = nil
if let unwrappedName = name {
    print(unwrappedName.count)
}else{
    print("name is nil")
}



/*
Optional Binding ( "if le" OR "guard let": How to use guard let in optional binding : Example.
Optional binding allows you to check if the optional contains a value and, if so, safely unwrap
and use that value within a specific scope
 */


var surname: String? = "Nebo"
if let unwrappedName = surname {
    print(unwrappedName.count)
    
}else{
    print("surname is nil")
}

surname = nil
if let unwrappedName = surname {
    print(unwrappedName.count)
}else{
    print("surname is nil")
}


//Example with using "guard let"

func processName(_ name: String?) {
    guard let unwrappedName = name else {
        print("Name is nil")
        return
    }
    
    // Now you can safely use unwrappedName within this scope
    print("Processing name: \(unwrappedName)")
}

// Example usage
let validName = "John"
let invalidName: String? = nil

processName(validName)  // Output: Processing name: John
processName(invalidName)  // Output: Name is nil




//Different ways for looping array elements using for loops

var myArray: [Int] = [1,2,3,4,5,6,7,8,9,10]

 //method 1: Using traditional  for loop with indices
for i in 0..<myArray.count {
    print(myArray[i])
}

//method 2: Using enumerated () method to get both index and value
for (index, value) in myArray.enumerated() {
    print("Index: \(index), value; \(value)")
}

//Method 3; Using for-in loop directily on array values
for value in myArray {
    print(value)
}

// method 4: Using forEach function
myArray.forEach { value in
    print(value)
    
}


//var myArray: [elementType] = [element1, element2, element3]ts:
var rArray = [1,2,3,4,5,6,7,8,9, 10]
for i in 0..<rArray.count {
    print(rArray[i])
}

for value in rArray {
    print(value)
}

for (index, value) in rArray.enumerated() {
    print("index: \(index), value: \(value) ")
    
}

var myMatrix = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
]

for i in 0..<myMatrix.count {
    for j in 0..<myMatrix[i].count {
        print("value at row \(i), column \(j): \(myMatrix[i][j])")
    }
}


//Function calculate square.
func calculateSquare(number: Int) -> Int {
    return number * number
}
//Function call
let iResult1 = calculateSquare(number: 5)
print(iResult1)




func addTwo(a: Int, b: Int) -> Int {
    return a + b
}

let iResult2 = addTwo(a: 8, b: 8)
print(iResult2)




func findMaximum(numbers: [Int]) -> Int? {
    return numbers.max()
}
let myMax = findMaximum(numbers: [1,2,3,5,5,82,834])
print(myMax ?? 0)




// Define a function named "calculate" that takes three parameters: a, b, and operation
func calculate(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    // Perform the operation with the given parameters and return the result
    return operation(a, b)
}

// Define a closure that adds two numbers
let addition = { (a: Int, b: Int) -> Int in
    return a + b
}

// Define a closure that subtracts two numbers
let subtraction = { (a: Int, b: Int) -> Int in
    return a - b
}

// Define a closure that multiplies two numbers
let multiplication = { (a: Int, b: Int) -> Int in
    return a * b
}

// Call the calculate function with different operations
let additionResult = calculate(a: 10, b: 5, operation: addition)
print("Addition result: \(additionResult)")

let subtractionResult = calculate(a: 10, b: 5, operation: subtraction)
print("Subtraction result: \(subtractionResult)")

let multiplicationResult = calculate(a: 10, b: 5, operation: multiplication)
print("Multiplication result: \(multiplicationResult)")



// Using Guard Statements for Unwrapping

func processUserDetails(user: [String: Any]) {
    guard let name = user["name"] as? String else {
        print("User name is missing or invalid")
        return
    }

    if let age = user["age"] as? Int {
        print("\(name) is \(age) years old")
    } else {
        print("\(name)'s age is unknown")
    }
}

let user1: [String: Any] = ["name": "Bob", "age": 30]
let user2: [String: Any] = ["age": 25]

processUserDetails(user: user1)
processUserDetails(user: user2)


// Checking Optional Type Using 'is ' Keyword
var optionalValue: Any? = "Hello"

if optionalValue is String {
    print("The value is a String")
} else {
    print("The value is not a String")
}

optionalValue = 42

if optionalValue is Int {
    print("The value is an Int")
} else {
    print("The value is not an Int")
}
