//: Functions

import Foundation



// Function declaration and invocation:
/**
 A function in Swift is a self-contained block of code that performs a specific task.
 It allows you to organize your code, make it modular, and promote code reuse.
 The declaration of a function includes its name, parameters, return type, and body.
 Invocation refers to calling a function to execute its code.

 Syntax:
 func functionName(parameter1: Type, parameter2: Type, ...) -> ReturnType {
     // Function body
     // Code to perform a specific task
     return Result
 }

 Example:
 func addNumbers(a: Int, b: Int) -> Int {
     return a + b
 }

 // Function call
 let sum = addNumbers(a: 5, b: 3)
 print("Sum: \(sum)")
*/

// Parameters and return values:
/**
 Parameters are the values that a function accepts when it's called, and they are defined
 in the function's parameter list. Return values are the results that a function produces after it's executed.
 In Swift, both parameters and return values can have external and internal names, which can improve the
 readability of function calls and the clarity of function implementations.

 Syntax:
 func functionName(externalName internalName: Type, ...) -> ReturnType {
     // Function body
     // Code to perform a specific task
     return Result
 }

 Example:
 func addNumbers(a: Int, b: Int) -> Int {
     return a + b
 }

 // Function call
 let sum = addNumbers(a: 5, b: 3)
 print("Sum: \(sum)")
*/

// Function types:
/**
 In Swift, functions are first-class citizens, which means they can be assigned to variables,
 passed as arguments to other functions, and returned from other functions. Function types
 represent the types of functions in Swift, including parameter types, return type, and whether
 the function throws an error.

 Syntax:
 let functionName: (ParameterTypes) -> ReturnType = { parameters in
     // Function body
     // Code to perform a specific task
     return Result
 }

 Example:
 let multiply: (Int, Int) -> Int = { a, b in
     return a * b
 }

 let product = multiply(4, 5)
 print("Product: \(product)")
*/

// Function declaration and invocation

// Parameters and return values

// Function types



/*

This structure provides additional information about function declaration and invocation,
parameters and return values, and function types to support the code provided earlier.
Let me know if you need further clarification!
*/


//Function definition
func addNumbers(a: Int, b: Int) -> Int{
    return a + b
}
//function call
let sum = addNumbers(a: 5, b: 3)
print("sum: \(sum)")


//Example 2: String Concatenation Function

//function Definition
func concatenateString(str1: String, str2: String) -> String{
    return str1 + str2
}
//function call
let resultString = concatenateString(str1: "Hello", str2: "World")
print("concatenated String:  \(resultString)")

//Example 3. Calculate Area of a Circle

//function definition
func calculateCircleArea(radius: Double) -> Double{
    return 3.14 * radius * radius
}
//function call
let area = calculateCircleArea(radius: 4.0)
print("Circle Area: \(area)")

//Example 4: Check if a number is Even
func isEven(number: Int) -> Bool{
    return number % 2 == 0
}
//function call
let checkEven = isEven(number: 7)
print("Is Even? \(checkEven)")

//Example 5: Greet a User

//function definition
func greetUser(name: String) -> String{
    return "Hello, \(name)!"
}

//function call
let greeting = greetUser(name: "John")
print(greeting)

//Example 6: Convert Fahrenheit to Celsius:

//Function definition
func fahrenheitToCelcius(fahrenheit: Double) -> Double{
    return (fahrenheit - 32) * 5 / 9
}
//function call
let resultFahrenheit = fahrenheitToCelcius(fahrenheit: 24)

// Round to the nearest integer
let roundedResult = round(resultFahrenheit)
print("fahrenheitToCelcius: \(roundedResult)")

//Example 7: Find the Maximum of Two Numbers.

//Function definition
func maxOfTwoNumbers(a: Int, b: Int) -> Int{
    //function body
    return a > b ? a : b
}

//function call
let maxResult = maxOfTwoNumbers(a: 300, b: 600)
print("the maxOfTwoNumbers: \(maxResult)")

//Example 8: Generate Fibonacci Sequence.

//Function definition
func generateFibonacci(n: Int) -> [Int]{
    var sequence = [0, 1]
    while sequence.count < n {
        sequence.append(sequence.last! + sequence[sequence.count - 2])
    }
    return sequence
}

let resultFibonacci = generateFibonacci(n: 20)
print("GenerateFibonacci: \(resultFibonacci)")

//Example 9: Check if a number is a Palindrome.

//Function definition
func isPalindrome(str: String) -> Bool{
    return str == String(str.reversed())
}
//function call
let myPalindrome = isPalindrome(str: "mom")
print(myPalindrome)

//Example 10: Calculate Factorial

// function definition/annotation
func factorial(n: Int) -> Int{
    return n == 0 ? 1 : n * factorial(n: n - 1)
}
//function call
let myfact = factorial(n: 20)
print(myfact)

//-----------------------------------------------------------

//Difference between External and Internal parameter names in Swift
/*
 External Parameter Name:
 - It is the name used when calling the function.
 - It provides a clear and descriptive label for each argument.
 - It is specified in the function signature, preceding the internal parameter name.
 - It helps improve the readability of the function call.
 
 Internal Parameter Name:
 - It is the name used within the function's implementation.
 - It is used to refer to the parameter's value inside the function body.
 - It is specified in the function signature, following the external parameter name and separated
   by a space.
 - It helps make the function implementation clear and concise.
 
 Internal parameters are used inside the function and are not visible to the caller.
They are used to refer to the values passed to the function. Here name and message are
internal parameters used inside the function to refer to values passed to the function.
 */

//Internal Parameters: Example 1:

//Function definition
func greet(name: String, message: String) {
    print("\(name), \(message)")
}
// Function call
greet(name: "John", message: "How are you doing?")

//External Parameters: Example 1:
/**
 External parameters are used to label the arguments passed to the function.
 - They are visible to the caller and used to make the function more readable.
 - "_" indicates that the first parameter does not have an external parameter name.
 - When calling the function, the caller would use external parameter as follows.
 */

//Function definition
func multiply(_ a: Int, by b: Int) -> Int{
    return a * b
}
// Function Call
let result = multiply(5, by: 10)

//Example 2.
func add(_ a: Int, _ b: Int) -> Int{
    return a + b
}
// Function Call
let total = add(3, 4)

//Example 3.
func greet(to name: String){
    print("Hello,  \(name)")
}
//Function Call
greet(to: "John")

//Example 4.
//Function definition
func calculate(_ a: Int, plus b: Int, minus c: Int) -> Int{
    return a + b - c
}
// Function Call
let total2 = calculate(5, plus: 6, minus: 7)

// Example 5
// Function definition
func square(_ x: Double) -> Double{
    return x * x
}
// Function call
let result1 = square(5)
print(result1)

//Example 6:
//Function definition
func greet(_ name: String){
    print("Hello, \(name)")
}
// Function call
greet("John")

//Example 7.
//Function definition
func concatenate(_ str1: String, with str2: String) -> String{
    return str1 + str2
}
// Function call
let result2 = concatenate("Swift", with: "Programming")
print(result2)

//Example 8.
// External parameter: base, Internal parameter: exponent
func power(_ base: Double, raisedTo exponent: Double) -> Double{
    return pow(base, exponent)
}
// Function call
let result3 = power(2, raisedTo: 3)

//Example 9
// External parameter: from, Internal parameter: to
func copyFile(from source: String, to destination: String){
    // Implementation
}
// Function call
copyFile(from: "file.txt", to: "backup/file.txt")

//Example 10
// External parameter: with, Internal parameter: and
func combineStrings(_ first: String, with second: String) -> String{
    return first + second
}
// Function call
let combined = combineStrings("Hello", with: " World")

//-----------------------------------------------------------

//Summary of Functions in Swift Programming Language

//1. Basic Function: Function Annotation
func sayHello() {
    print("Hello, Swift")
}
sayHello()

//2. Function with Parameters: Function annotation
func greet(nameT: String){
    print("hello, \(nameT)")
}
greet(nameT: "Charles")

//3. Function with Return Types: Function Annotation
func add(a: Int, b: Int) -> Int{
    return a + b
}
let sumT = add(a:4, b: 8)

//4. Function with External and Internal Parameter Names: Annotation
func divide(dividend a: Double, by b: Double) -> Double{
    return a / b
}
let quoteient = divide(dividend: 10.0, by: 2.0)

//5. Variadic Function: Function Annotation
func average(_ numbers: Double...) -> Double{
    let total = numbers.reduce(0, +)
    return total / Double(numbers.count)
}
let avg = average(2.0, 4.0, 6.0, 8.0)

//6. Function with Default Parameter Values: Function Annotation
func power(base: Int, exponent: Int = 2) -> Int{
    return Int(pow(Double(base), Double(exponent)))
}
let resultz = power(base: 3) //exponent defaults to 2

//7. Function with in-Out Parameters:
func swapValues(_ a: inout Int, _ b: inout Int){
    let temp = a
    a = b
    b = temp
}
var x = 5
var y = 10
swapValues(&x, &y)

//8. Nested Function : Annotation
func outerFunction(){
    func innerFunction(){
        print("Insider nested function")
    }
    innerFunction()
}
outerFunction()

//9. Anonymous Function (Closure): Function Annotation
let multiply: (Int, Int) -> Int = { a, b in
    return a * b
}
let product = multiply(4, 5)

//10. Function with Optional Return Types : Function Annotation
func findMax(_ numbers: Int...) -> Int?{
    guard let max = numbers.max() else{
        return nil
    }
    return max
}
if let maxNumber = findMax(3,7, 1,9){
    print("Maximum number is  \(maxNumber)")
} else {
    print("No numbers provided")
}

//11. Recursive Function: Function Annotation
func factorial(_ n: Int) -> Int{
    if n == 0 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}
let fact = factorial(10)
print(fact)

//Throwing Function(Error Handling): Function Annotation
// Function Annotation
enum MathError: Error{
    case divisionByZero
}

func divideWithCheck(_ a: Int, by b: Int) throws -> Int {
    guard b != 0 else {
        throw MathError.divisionByZero
    }
    return a / b
}

// Example
do {
    let result = try divideWithCheck(10, by: 0)
} catch {
    print("Error: \(error)")
}

//Function inout
/**
 Definition of inout:
 inout is a keyword in Swift used to indicate that a parameter is passed by reference to a function.
 This means the function can modify the value of the parameter directly, and any changes made to the
 parameter inside the function will be reflected outside the function.

 Use and Main Objective:
 The main objective of using inout parameters is to allow a function to modify the values of its
 parameters and have those changes reflected outside the function. It's particularly useful when
 you want a function to alter the value of a variable that was passed to it.

 Types of inout:
 inout is typically used with variables of non-constant types, including custom data types such as structures and classes.

 Simple Examples:
 */

//Define a function that increments a number using iout
func incrementNumber(_ num: inout Int){
    num = num + 1
}
//Declare a variable outside the function
var myNumber = 5
//Call the function with inout parameter
incrementNumber(&myNumber)
//Print the value after the function call
print("After incrementing: \(myNumber)")

// Example 2: Modifying Array Elements
func incrementEachElement(_ arr: inout [Int]) {
    for i in 0..<arr.count {
        arr[i] += 1
    }
}

var numbers = [1, 2, 3, 4]
incrementEachElement(&numbers)
print("After incrementing: \(numbers)")

// Example 3: Updating Custom Type
struct Point {
    var x: Int
    var y: Int
}

func moveToOrigin(_ point: inout Point) {
    point.x = 0
    point.y = 0
}

var myPoint = Point(x: 5, y: 10)
moveToOrigin(&myPoint)
print("After moving to origin: \(myPoint)")
