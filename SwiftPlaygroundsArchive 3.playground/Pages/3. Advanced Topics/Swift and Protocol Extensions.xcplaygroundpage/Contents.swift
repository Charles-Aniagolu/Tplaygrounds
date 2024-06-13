//: Swift and Protocol Extensions

import Foundation




/*
 
 Protocol Extensions:
 Definition: Protocols describe what methods or properties something should have,
 but they don’t provide the actual code inside them.
 Purpose: Protocol extensions allow you to add default implementations and computed properties
 to protocols. When a type conforms to a protocol, it automatically gains the functionalities provided by the protocol extension.
 
 
 Swift Extensions:
 Definition: Extensions allow you to add methods to existing types like classes, structs, and enums.
 They enhance the functionality of specific data types.
 Purpose: Extensions are useful for adding new methods, computed properties, initializers, and more to
 existing types without modifying their original source code.
 
 */


// --------------- Protocol Extensions ------------------------

// Equatable Protocol Extension : Person Struct Example

struct Person{
    var name: String
    var age: Int
}

// Extension to make Person conform to Equatable
extension Person: Equatable{
    static func == (lhs: Person, rhs: Person) -> Bool{
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

// Test the Person struct
var person1 = Person(name: "Alice", age: 30)
var person2 = Person(name: "Bob", age: 30)

print("Person 1 - Name: \(person1.name), Age: \(person1.age)")
print("Person 2 - Name: \(person2.name), Age: \(person2.age)")

// Test Equatable conformance
let isEqual = person1 == person2
print("Are the persons equal? \(isEqual)")




// Protocol for message display
protocol MessageDisplay {
    var message: String { get }
    var sender: String { get }
    var timestamp: Date { get }
    func displayMessage()
}

// Extension providing default implementation for displayMessage()
extension MessageDisplay {
    func displayMessage() {
        print("\(sender) said: \(message) and sent at: \(timestamp)")
    }
}

// Conform TextMessage to MessageDisplay
struct TextMessage: MessageDisplay {
    var message: String
    var sender: String
    var timestamp: Date
    // No need to implement displayMessage() here
}

// Conform ImageMessage to MessageDisplay
class ImageMessage: MessageDisplay {
    var message: String
    var sender: String
    var timestamp: Date
    var imageURL: URL

    init(message: String, sender: String, timestamp: Date, imageURL: URL) {
        self.message = message
        self.sender = sender
        self.timestamp = timestamp
        self.imageURL = imageURL
    }
    // No need to implement displayMessage() here
}

// Usage
let textMsg = TextMessage(message: "Hello!", sender: "Alice", timestamp: Date())
let imageMsg = ImageMessage(message: "Check out this photo!", sender: "Bob", timestamp: Date(), imageURL: URL(string: "https://example.com/image.jpg")!)

textMsg.displayMessage() // Automatically uses the default implementation
imageMsg.displayMessage() // Also uses the default implementation


// Protocol Vehicle
protocol Vehicle {
    var numberOfWheels: Int { get }
    func start()
    func stop()
}

struct Car: Vehicle {
    var numberOfWheels: Int = 4
}

extension Vehicle {
    func start() {
        print("Engine started")
    }
    
    func stop() {
        print("Vehicle stopped")
    }
}

let car = Car()
print("The number of wheels in the Car : \(car.numberOfWheels)")
car.start() // Output: Engine started
car.stop() // Output: Vehicle stopped


// Protocol Composition
protocol Brother{
    func playWhithBrother()
}

protocol Sister {
    func playWithSiter()
}

typealias Siblings = Brother & Sister

struct BrotherAndSister: Siblings {
    func playWhithBrother() {
        print("Playing with brother")
    }
    func playWithSiter() {
        print("Playing with sister")
    }
}
//Usage
let siblings: Siblings = BrotherAndSister()
siblings.playWhithBrother()
siblings.playWithSiter()
print(siblings)


// Teacher Class with Swift Extension

class Teacher {
    var name: String
    static var schoolName: String = "Swift Academy"
    
    init(name: String) {
        self.name = name
    }
    
    func teach() {
        print("\(name) is teaching.")
    }
}

extension Teacher {
    func introduce() {
        print("Hello, I am \(name) and I teach at \(Teacher.schoolName).")
    }
}

let mathTeacher = Teacher(name: "Ms. Smith")
mathTeacher.teach() // Output: Ms. Smith is teaching.
mathTeacher.introduce() // Output: Hello, I am Ms. Smith and I teach at Swift Academy.

// Printing the static method
print("School Name: \(Teacher.schoolName)")


// Dog Class with Extension
class Dog {
    var name: String
    var breed: String
    var age: Int
    var color: String
    
    init(name: String, breed: String, age: Int, color: String) {
        self.name = name
        self.breed = breed
        self.age = age
        self.color = color
    }
}

extension Dog {
    func bark() {
        print("\(name) is barking!")
    }
}

// Creating an instance of Dog
let myDog = Dog(name: "Buddy", breed: "Labrador", age: 3, color: "Golden")

// Calling methods and printing values for Dog
myDog.bark()
print("Dog Name: \(myDog.name)")
print("Dog Breed: \(myDog.breed)")
print("Dog Age: \(myDog.age)")
print("Dog Color: \(myDog.color)")


// Classroom Protocol with Extension
protocol Classroom {
    var className: String { get }
    var capacity: Int { get }
    var location: String { get }
    
    func welcomeStudents()
}

extension Classroom {
    func welcomeStudents() {
        print("Welcome to \(className) located at \(location).")
    }
}

// Conforming MathClass to Classroom protocol
class MathClass: Classroom {
    var className: String = "Mathematics"
    var capacity: Int = 30
    var location: String = "Room 101"
}

// Creating an instance of MathClass
let mathClass = MathClass()

// Calling methods and printing values for MathClass
mathClass.welcomeStudents()
print("Class Name: \(mathClass.className)")
print("Class Capacity: \(mathClass.capacity)")
print("Class Location: \(mathClass.location)")




// Demonstrating the use of computed properties, initializer,subscripts, nested types and more..

// Protocol defining an Athlete
protocol Athlete {
    var name: String { get }
    var sport: String { get }
    var age: Int { get }
    
    func introduce()
}

// Extension adding functionality to the Athlete protocol
extension Athlete {
    func introduce() {
        print("Hello, my name is \(name). I am \(age) years old and I play \(sport).")
    }
    
    // Computed property to determine if the athlete is young (age less than 30)
    var isYoung: Bool {
        return age < 30
    }
}

// Struct representing a Football player conforming to the Athlete protocol
struct FootballPlayer: Athlete {
    var name: String
    var sport: String
    var age: Int
    
    // Initializer with default sport value
    init(name: String, sport: String = "Football", age: Int) {
        self.name = name
        self.sport = sport
        self.age = age
    }
    
    // Calling the default implementation of introduce() from the extension
    func introduce() {
        print("I am a football player.")
    }
}

// Nested type representing a team
struct Team {
    var name: String
    var sport: String
    var members: [Athlete]
    
    // Method to print team details
    func printTeam() {
        print("Team \(name) - \(sport):")
        for member in members {
            print("- \(member.name)")
        }
    }
}

// Creating instances and demonstrating the functionalities
let footballPlayer = FootballPlayer(name: "Leo Messi", age: 34)
footballPlayer.introduce()
print("Is \(footballPlayer.name) young? \(footballPlayer.isYoung)")

let youngAthlete = FootballPlayer(name: "Young Player", age: 20)
print("Is \(youngAthlete.name) young? \(youngAthlete.isYoung)")

// Creating a team of football players
let team = Team(name: "Barcelona", sport: "Football", members: [footballPlayer, youngAthlete])
team.printTeam()


// Extensions examples: Weather, Family and laptops.Demonstrating various functionalities using swift protocol extensions.

// Protocol defining a WeatherInfo
protocol WeatherInfo {
    var temperature: Double { get }
    var condition: String { get }
    var location: String { get }
    
    func displayWeather()
}

// Extension adding functionality to the WeatherInfo protocol
extension WeatherInfo {
    func displayWeather() {
        print("Weather in \(location): \(temperature)°C, \(condition)")
    }
}

// Struct representing weather data conforming to the WeatherInfo protocol
struct WeatherData: WeatherInfo {
    var temperature: Double
    var condition: String
    var location: String
}

// Creating an instance and demonstrating the functionalities
let weatherInfo = WeatherData(temperature: 25.5, condition: "Sunny", location: "New York")
weatherInfo.displayWeather()

// Protocol defining a FamilyMember
protocol FamilyMember {
    var name: String { get }
    var age: Int { get }
    
    func introduce()
}

// Extension adding functionality to the FamilyMember protocol
extension FamilyMember {
    func introduce() {
        print("Hello, I am \(name) and I am \(age) years old.")
    }
}

// Struct representing a family member conforming to the FamilyMember protocol
struct PersonM: FamilyMember {
    var name: String
    var age: Int
}

// Creating an instance and demonstrating the functionalities
let person = PersonM(name: "John", age: 30)
person.introduce()

// Protocol defining a Laptop
protocol Laptop {
    var brand: String { get }
    var model: String { get }
    
    func displayDetails()
}

// Extension adding functionality to the Laptop protocol
extension Laptop {
    func displayDetails() {
        print("Laptop: \(brand) \(model)")
    }
}

// Struct representing a laptop conforming to the Laptop protocol
struct MacBook: Laptop {
    var brand: String
    var model: String
}

// Creating an instance and demonstrating the functionalities
let macBook = MacBook(brand: "Apple", model: "MacBook Pro")
macBook.displayDetails()







// AdvancedVehicleSystem: Example of Protocol Composition

protocol Vehicles {
    var numberOfWheels: Int { get }
    func start()
    func stop()
}

protocol Flying {
    func takeOff()
    func land()
}

protocol Swimming {
    func dive()
    func surface()
}

typealias AdvancedVehicle = Vehicles & Flying & Swimming

extension Vehicles{
    func start() {
        print("Vehicle starting...")
    }
    
    func stop() {
        print("Vehicle stopping...")
    }
}

extension Flying {
    func takeOff() {
        print("Flying: Taking off...")
    }
    
    func land() {
        print("Flying: Landing...")
    }
}

extension Swimming {
    func dive() {
        print("Swimming: Diving...")
    }
    
    func surface() {
        print("Swimming: Surfacing...")
    }
}

struct Seaplane: AdvancedVehicle {
    var numberOfWheels: Int { return 4 }
}

// Usage
let seaplane = Seaplane()

// Accessing properties
print("Number of wheels: \(seaplane.numberOfWheels)")

// Calling methods
seaplane.start()
seaplane.stop()
seaplane.takeOff()
seaplane.land()
seaplane.dive()
seaplane.surface()



/*

protocol Animal{
    var name: String {get set}
}
 
 Is this a stored property? if not what is it: protocol Animal{
     var name: String {get set}
 
 No, the property "name" in the "Animal" protocol is not a stored property.
 Instead, it's a computed property with a getter and a setter.

 A stored property is a property that stores constant or variable values as part of an instance.
 It is declared with the `var` or `let` keyword inside the definition of a class, struct, or enum.

 In contrast, a computed property does not store a value directly. Instead, it provides a getter
 and an optional setter to retrieve and set other properties and values indirectly.

 In `Animal` protocol below:

 protocol Animal {
     var name: String { get set }
 }
 

 The `name` property is a computed property with a getter (`get`) and a setter (`set`).
 This means that conforming types to the `Animal` protocol must provide their own implementation
 for both getting and setting the `name` property. The actual storage for the property will be provided by the conforming types.
 



// Stored Property example

struct Person {
    var name: String
}

// Extension adding a computed property to Person
extension Person {
    var greeting: String {
        return "Hello, my name is \(name)."
    }
}

// Creating an instance and accessing the computed property
let person = Person(name: "John")
print(person.greeting) // Output: Hello, my name is John.
 */

//Overriding Existing Functionalities Examples

/*
 Extensions can't directly override existing functionalities of types, but you can achieve similar
 behavior by creating methods with the same name as existing ones. Here's an example


// Struct representing a shape
struct Shape {
    func draw() {
        print("Drawing a shape.")
    }
}

// Extension adding a method with the same name as an existing method
extension Shape {
    func draw() {
        print("Drawing a different shape.")
    }
}

// Creating an instance and calling the method
let shape = Shape()
shape.draw() // Output: Drawing a different shape.


// Other Examples of Extensions

// Example 1: Adding a method to Int to calculate the square
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 5
print(number.squared()) // Output: 25

// Example 2: Adding a method to String to capitalize the first letter
extension String {
    func capitalizeFirstLetter() -> String {
        return prefix(1).uppercased() + dropFirst()
    }
}

let message = "hello world"
print(message.capitalizeFirstLetter()) // Output: Hello world

// Example 3: Adding a method to Array to get the last element
extension Array {
    func lastElement() -> Element? {
        return self.last
    }
}

let array = [1, 2, 3, 4, 5]
print(array.lastElement() ?? "Array is empty") // Output: 5

 */
