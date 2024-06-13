//: Computed and Stored Properties

import Foundation




// Difference between Stored and Computed Properties and their respective implementations


// Struct Example in Computed Properties
struct Person {
    private var _name: String = ""
    private var _age: Int = 0
    
    var name: String {
        get {
            return _name
        }
        set {
            _name = newValue
        }
    }
    
    var age: Int {
        get {
            return _age
        }
        set {
            _age = newValue
        }
    }
    
    // Computed property example
    var fullName: String {
        return "\(name) - \(age)"
    }
}

// Test the Person struct
var person = Person()
person.name = "John"
person.age = 30

print("Name: \(person.name), Age: \(person.age)")
print("Full Name: \(person.fullName)")


 
// Protocol Example: Here struct conforms to Shape Protocol.
protocol Shape {
    var area: Double { get } // Computed property representing the area of the shape
}

// Define a struct named Rectangle conforming to the Shape protocol
struct Rectangle: Shape {
    var width: Double
    var height: Double
    
    var area: Double { // Computed property to calculate the area of the rectangle
        return width * height
    }
}

// Define a struct named Circle conforming to the Shape protocol
struct Circle: Shape {
    var radius: Double
    
    var area: Double { // Computed property to calculate the area of the circle
        return Double.pi * radius * radius
    }
}

// Create an instance of Rectangle and calculate its area
let rectangle = Rectangle(width: 5, height: 3)
print("Rectangle area:", rectangle.area)

// Create an instance of Circle and calculate its area
let circle = Circle(radius: 2)
print("Circle area:", circle.area)



// Palindrome

func isPalindrome(_ word: String){
    let cleanedWord = word.lowercased().replacingOccurrences(of: " ", with: "")
    if cleanedWord == String(cleanedWord.reversed()) {
        print("\(word) is a palindrome.")
        
    }else{
        print("\(word) is not a palindrome")
    }
}

let testString = "Charles"
isPalindrome(testString)

// Maxnumber
func maxNumber(numbers: [Int]) -> Int {
    var maxNumber = Int.min
    
        for number in numbers {
            if number > maxNumber{
                maxNumber = number
            }
        }
           return maxNumber
    }

// Example usage:
let numberArray = [11, 2, 7, 5, 21]
let result = maxNumber(numbers: numberArray)
print("The maximum number is \(result).") // Prints: "The maximum number is 21."
