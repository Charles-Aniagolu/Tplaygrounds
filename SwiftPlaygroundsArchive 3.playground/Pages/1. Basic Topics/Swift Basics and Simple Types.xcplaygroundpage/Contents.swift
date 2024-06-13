import Foundation



//Swift Basics and Simple Types

/*
    - Introduction to Swift syntax and basic data types (Int, Double, String, Bool)
    - Variables and Constants
    - Basic arithmetic operations
 */



// Introduction to Swift syntax and basic data types (Int, Double, String, Bool)
var age: Int = 25
var name: String = "John"
var price: Double = 19.99
var isActive: Bool = true
var fruits: [String] = ["Apple", "Banana", "Orange"]
var str = "hello, world"
str += "!"

// Variables and Constants
let nmberOFDaysInAweek: Int = 7
let appname: String = "MyApp"
let piValue: Double = 3.14159
let isSwiftAwesone: Bool = false
let primeNumbers: [Int] = [2, 3, 5, 7, 11]

// Basic arithmetic operations
let numberOfMunicipalities: Int = 22
var population: Int = 529100
let townName: String = "Pirkkala"
var unemploymentRate: Double = 7.6
let unemployedPeople = Double(population) * (unemploymentRate / 100.00)
let municipalDescription = "\(townName) has \(numberOfMunicipalities) municipalities, a population of \(population), and approximately \(unemployedPeople) unemployed people"
print(municipalDescription)

// String basics
let geeting : String = "Hello, Swift"
var firstName = "Charles"
let lastName = "Nebo"
let fullName = firstName + " " + lastName
let myAge: Int = 23
let message = "I am \(myAge) years old."
let courseName = "Swift Programming"
let length = courseName.count
let sentence = "Swift is powerful"
let substring = sentence.prefix(5)



