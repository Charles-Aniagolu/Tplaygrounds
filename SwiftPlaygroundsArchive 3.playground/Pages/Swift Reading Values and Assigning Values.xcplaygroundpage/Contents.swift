//Distinction between Reading Values and Assigning values to variable.

import Foundation


/**
 The distinction of  Reading values and assigning values to variables or items in a code
 In Swift, there is a distinction between reading values (retrieving or accessing data)
 and assigning values (setting or updating data) to variables or items, and the approach
 depends on the context, data structure, and the type of variable.
 */

//Reading by Numerical Positions: Explanation: Here, we have an array of numbers, and we read
//the value at the third position (index 2) using the numerical position.

import Foundation

// Example 1: Reading by Numerical Positions (Array)
let numbers = [10, 20, 30, 40, 50]
let thirdNumber = numbers[2]
print("The third number is \(thirdNumber)")

// Example 2: Reading by Names (Dictionary)
var person: [String: Any] = ["name": "John", "age": 25, "city": "New York"]
let personName = person["name"] as? String ?? "unknown"
print("The person's name is \(personName)")

// Example 3: Reading by Names (Struct)
struct Point {
    var x: Int
    var y: Int
}

let origin = Point(x: 0, y: 0)
let originX = origin.x
print("The x-coordinate of the origin is \(originX)")

// Example 4: Assigning Value by Numerical Positions (Array)
var names = ["Alice", "Bob", "Charlie"]
names[1] = "Robert"
print("The updated names array: \(names)")

// Example 5: Assigning by Names (Dictionary)
var personx: [String: Any] = ["name": "John", "age": 25, "city": "New York"]
personx["age"] = 26
let updatedAge = personx["age"] as? Int ?? 0
print("The updated age is \(updatedAge)")

// Example 6: Assigning by Names (Struct)
struct UpdatedPoint {
    var x: Int
    var y: Int
}

var position = UpdatedPoint(x: 10, y: 20)
position.y = 30
print("The updated y-coordinate is \(position.y)")


// Example 7: Reading from Optional Dictionary
var userDetails: [String: String?] = ["name": "Alice", "email": nil, "city": "London"]

// Use optional binding to safely unwrap the email value
if let email = userDetails["email"] {
    // If email is not nil, it will be assigned to the constant 'email'
    print("User's email: \(email ?? "No email provided")")
} else {
    // If email is nil, provide a default message
    print("User's email: No email provided")
}



// Example 8: Safely Unwrapping Optional Struct Property
struct Book {
    let title: String
    let pageCount: Int?
}

let book1 = Book(title: "Swift Programming", pageCount: 300)
let book2 = Book(title: "iOS Development", pageCount: nil)

if let pageCount = book1.pageCount {
    print("\(book1.title) has \(pageCount) pages")
} else {
    print("\(book1.title) page count is unknown")
}

if let pageCount = book2.pageCount {
    print("\(book2.title) has \(pageCount) pages")
} else {
    print("\(book2.title) page count is unknown")
}


// Example 9: Handling Optional Chaining

class Person {
    var name: String
    var pet: Pet?

    init(name: String) {
        self.name = name
    }
}

class Pet {
    var species: String

    init(species: String) {
        self.species = species
    }
}

let person1 = Person(name: "John")
let person2 = Person(name: "Alice")
person2.pet = Pet(species: "Dog")

if let petSpecies = person1.pet?.species {
    print("\(person1.name) has a \(petSpecies)")
} else {
    print("\(person1.name) does not have a pet")
}

if let petSpecies = person2.pet?.species {
    print("\(person2.name) has a \(petSpecies)")
} else {
    print("\(person2.name) does not have a pet")
}
