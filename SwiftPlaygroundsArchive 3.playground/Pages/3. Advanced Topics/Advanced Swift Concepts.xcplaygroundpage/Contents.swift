//: Advanced Functions, Closures and Generics

import Foundation




/*
 - Definition**: Closures in Swift are self-contained blocks of functionality used similarly to anonymous
   functions, lambdas, or blocks in other languages.
 - Capture Behavior**: They can capture and retain references to constants and variables from their surrounding context.
 - Memory Management**: Swift automatically handles memory management for captured values.
 - Anonymous Nature**: Unlike functions, closures in Swift do not have a defined name in their syntax.
 
 - Usage**: Closures are often assigned to variables or passed directly as arguments to functions without being named,
   but they can also be assigned to variables for later reference.
*/



//Function Declaration and Definition Syntax

//Declaration
var closureName: (Int) -> Int

//Definition
let myClosure: (Int, Int) -> Int = { (a, b) in
    
  return a + b
}
let sumClosure = myClosure(5, 6)
print(sumClosure)


//Types of Swift Closure: Global functions defined in global scope
func add(a: Int, b: Int) -> Int {
    return a / b
}
let myDivide = add(a: 80, b: 20)
print(myDivide)

// Inline Closure expressions: unnamed closures
let additionClosure: (Int, Int) -> Int = { $0 + $1}

print(additionClosure(40, 50))


// popular and Easy Closure
let subtract: (Int, Int) -> Int = {$0 - $1 }
print(subtract(30, 15))

let greet: (String) -> String = { name in
    return "Hello, \(name) !"
}


// Closure Capturing
/*
 Closures capture and store references to variables and constants from the surrounding context
in which they are defined. This ensures that the values are available even if the variables go out of scope.
 */

func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
        
    }
    return incrementer
}
    
let incrementByTwo = makeIncrementer(incrementAmount: 2)
print(incrementByTwo())
print(incrementByTwo())
print(incrementByTwo())

//Example 2
func makeCounter() -> () -> Int {
    var count = 0
    let counter: () -> Int = {
        count += 1
        return count
    }
    return counter
}
let counter = makeCounter()
print(counter())
print(counter())



// Example

let addNumbers: (Int, Int) -> Int = { (a, b ) in
  return a * b
}
let sum = addNumbers(5, 3)
print(sum)


// Trailing Closure

//Example 1
func performOperation(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let iResult = performOperation(a: 5, b: 3) { $0 * $1 }
print(iResult)  // Output: 15

//Example 2
let specialNames = ["Alice", "Bob", "Charles"]
let sortedSpecialNames = specialNames.sorted {$0 < $1}
print(sortedSpecialNames)

// Closure and Reference Type:
/*
 Closures are reference types in Swift. When a closure is assigned to a variable or passed as
an argument to a function, the reference to the closure is captured.
 */

var closure1: () -> Void = { print("Closure1")}
var closure2 = closure1
print(closure1())
//closure2()





/*
 Closure as Passed around:
 You can assign closures to variables or constants, just like any other data type.
 They can be passed as arguments to functions or methods.
 Here’s an example where we pass a closure to the map function to transform an array of numbers:
 */

//Example 2.
let arrayNumbers = [8,9,2,1,7,28]
let squareArrayNumbers = arrayNumbers.map {($0 * $0)}
print(squareArrayNumbers)

/*
 Closure used in a code.
 Once you have a closure, you can invoke it using the closure’s name.
 You can call it wherever you need its functionality.
 Here’s an example of using a closure to sort an array of strings:
 */
let beautifulNames = ["Charles", "Eugene", "Cyril", "Esther", "Caroline", "Godfrey", "Nwaogbo", "Nebo"]
let sortedBeautifulNames = beautifulNames.sorted {($0 > $1)}
print(sortedBeautifulNames)





//Basic Closure without parameters
let moi: () -> Void = {
    print("Hello, Word!")
}
moi()



//Basic Closure with parameters
let greetUser: (String) -> Void = { name in
    print("Hey there \(name), ")
}
greetUser("Delilah")



//Closure that returns a value
let findSquare: (Int) -> Int = { num in
    let square = num * num
    return square
}

let result = findSquare(3)
print("the find square is: \(result)")




//Trailing Closure

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let captainFirstTeam = team.sorted { (name1, name2) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}
print(captainFirstTeam)




//Closure with Parameters
let helloName:(String) -> () = { name in
    print("Hello \(name)!")
    
}
helloName("Word")

//sorting with Closure
let names = ["Chris", " Alex", "Ewa", "Barry", "Daniella"]
let sortedNames = names.sorted{ $0 > $1}
print(sortedNames)

// Map with Closure
let numbers = [1,2,3,4,5]
let squareNumbers = numbers.map { $0 * $0}
print(squareNumbers)

// Filter with Closure
let scores = [85,92, 78,95,60]
let passingScores = scores.filter { $0 >= 80}
print(passingScores)


//Filtering out even numbers from array of integer
let i = [1,2,3,4,5,6,7,8,9,10]
let filteredNumbers = i.filter { i in
    return i % 3 == 0
}
print(filteredNumbers)


//Mapped Strings to UpperCase
let mappedNames = ["Alice", "Bob", "Charlie", "David"]
let uppercasedNames = mappedNames.map { mappedNames in
    
    return mappedNames.uppercased()
}
print(uppercasedNames)


let result10 = { (num1: Int, num2: Int) -> Int in
    return num1 + num2
}(5, 3) // Defining and calling the closure inline





// Swift Generics Basics Starts from here

/*
1.  Swift Generics are a powerful feature of the Swift programming language that allow you
to write flexible and reusable code. Generics enable you to write:
     functions,
     classes,
     and structures: that can work with any type, rather than just specific ones.
 */

func swap<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}
//calling the function
var x = 5
var y = 10
swap(&x,&y) //x is now 10, y is 5
print("x is now \(x), y is now \(y)")


/*

The benefit of Generic is that with one function, we can create different
 types as in this case. Ordinarily, I would have created another function
 specifically to print String values.

*/


var str1 = "Hello"
var str2 = "World"
swap(&str1, &str2)
print("str1 is now \(str1), and str2 is now \(str2)")




// Different types of Swift Generics: Generic Functions

// Generic Functions:
func printArray<T>(_ array: [T]) {
    for element in array {
        print(element)
    }
}
let myArray = [10,20,49, 50, 79]
printArray(myArray)

//  OR print the output horizontally
func printArray2<T>(_ array2: [T]) {
    for (index, element) in array2.enumerated() {
        if index == array2.count - 1 {
            print(element, terminator: "") // Don't add a new line at the end
        }else{
            print(element, terminator: " ") // Add a space between elements.
        }
    }
}
// Calling the function
let myArray2 = [60, 70, 80, 90, 100]
printArray2(myArray2)
print("\n")




//General Structure:
struct Stack<Element> {
    var items = [Element] ()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element? {
        return items.popLast()
    }
}
//Creating an instance of Stack with Int elements
var inStack = Stack<Int>()

//Push elements onto the stack
inStack.push(1)
inStack.push(2)
inStack.push(3)

// Creating an instance of Stack with Int elements
var intStack = Stack<Int>()

// Push elements onto the stack
intStack.push(10)
intStack.push(20)
intStack.push(30)

// Pop elements from the stack
if let poppedItem = intStack.pop() {
    print("Popped item: \(poppedItem)")  // output: popped item: 30
}
if let poppedItem = intStack.pop() {
    print("Popped item: \(poppedItem)") // output: popped item: 20
}

// Push more elements onto the stack
intStack.push(40)
intStack.push(50)

// Pop elements from the stack again
if let poppedItems = intStack.pop() {
    print("Popped item: \(poppedItems)") // output: Popped item 50
    
}
if let poppedItems = intStack.pop() {
    print("Popped item: \(poppedItems)") // Output: Popped item: 40
}


// Generic Enums:
enum Result<T, E: Error> {
    case success(T)
    case failure(E)
}

// Example usage:
// Assume we have a function that performs division and may throw an error

// Define a custom error type for division by zero
enum DivisionError: Error {
    case divisionByeZero
}

// Define a function that performs division and returns a Result
func divide(_ dividend: Int, by divisor: Int) -> Result <Int, DivisionError> {
    guard divisor != 0 else {
        return .failure(.divisionByeZero) // Return a failure case if the divisor is a zero
    }
    let quotient = dividend/divisor
    return .success(quotient)   // Return a success case with the quotient
    
}

// Call the divide function and handle the Result
let dividend = 10
let divisor = 2
let nResult = divide(dividend, by: divisor)

switch nResult {
case .success(let quotient):
    print("Division result:  \(dividend) / \(divisor) = \(quotient)")
case .failure(let error):
    print("Error occured: \(error)")
    
}


// Generic Classes:


// Define the Box class with a generic type T
class Box<T> {
    var value: T   // Property to hold the value of type T
    
    
// Initialize the Box with a value of type T
    init(value: T) {
        self.value = value
    }
    
 // Function to print the value of the box
    func printValue() {
        print("Value in the box :  \(value)")
    }
}

//Example usage:
// Create instances of Box with different types of values

// Box with an integer value
let intBox = Box(value: 42)
intBox.printValue()   //Output: Value in the box: 42

// Box with a string value
let stringBox = Box(value: "Hello, Swift! ")
stringBox.printValue()   // Output: value in the box: Hello, Swift!


// Box with a boolean value
let boolBox = Box(value: true)
boolBox.printValue() // Output: Value in the box: true


//Type Constraints with Generics:


// Define the findLargest function with a generic type T that conforms to Comparable
func findLargest<T: Comparable>(_ array: [T]) -> T? {
    
    
    // Check if the array is empty, return nil if so
    guard var largest = array.first else { return nil}
    for element in array {
        if element > largest {
            largest = element
        }
    }
    
    // Return the largest element found
    return largest
}
// Example usage:
// Call the findLargest function with arrays of different types

// Array of integers
let intArray = [5, 10, 3, 8, 15]
if let largestInt = findLargest(intArray) {
    print("Largest element in intArray:  \(largestInt)")  // Output: Largest element in intArray: 15
}
  
// Array of doubles
let doubleArray = [3.5, 2.8, 7.2, 5.1, 4.9]
if let largestDouble = findLargest(doubleArray) {
    print("Largest element in doubleArray: \(largestDouble)") // Output: Largest element in doubleArray: 7.2
}

// Array of strings
let stringArray = ["apple", "banana", "orange", "grape", "kiwi"]
if let largestString = findLargest(stringArray) {
    print("Largest element in stringArray: \(largestString)")
 
}
