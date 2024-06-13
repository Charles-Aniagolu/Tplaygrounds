//: Swift Classes

import Foundation



/**
 Swift Classes

A class in Swift is a blueprint or template for creating objects. It defines properties (attributes)
and methods (functions) that characterize the objects created from it. Classes allow you to model real-world entities,
encapsulate data, and provide behavior.
*/



// Example 1: Class definition
class MyClassName{
    // properties, methods, etc.
}

// Example 2: Property Definition
class MyClassName1{
    var myProperty: Int = 0
    static var myStaticProperty: String = "Static"
}

// Example 3: Method Definition
class MyClassName2{
    func myMethod(){
        // method implementation
    }
    static func myStaticMethod(){
        // type method implementation
    }
}



// Example 4: Creating an instance of the Class
class MyClassName3 {
    var myProperty: Int
    init(property: Int) {
        self.myProperty = property
    }
}

let myInstance = MyClassName3(property: 42)
print("My instance property value: \(myInstance.myProperty)")

// Inheritance
class ParentClassName{
    // superclass implementation
}

class SubClass: ParentClassName{
    // subclass implementation
}

class MyClassName4{
    deinit{
        // deinitializer implementation
    }
}

var obj1 = MyClassName4()
var obj2 = obj1





// Small Program Implementation



// Fundamental of Classes: Define a class using keyword: "class"
class PersonCharles{
    var name: String
    var height: Int
    init(name: String, height: Int){
        self.name = name
        self.height = height
    }
}

// Initialization: Create an instance of the class
let charlesInfo = PersonCharles(name: "Charles", height: 180)
print("Name: \(charlesInfo.name), Height: \(charlesInfo.height) cm")


// Instance method definition
class Charles{
    var name: String
    init(name: String){
        self.name = name
    }
    func sayHello(){
        print("Hello, I'm \(name)!")
    }
}
let charles = Charles(name: "Charles Nebo")
charles.sayHello()



// Combination of instance and Class Methods
class Car{
    var brand: String
    var year: Int
    static var numberOfCars: Int = 0
    init(brand: String, year: Int){
        self.brand = brand
        self.year = year
        Car.numberOfCars += 1
    }
    func startEngine(){
        print("\(brand) engine started")
    }
    static func printNumberOfCars(){
        print("Number of cars: \(numberOfCars)")
    }
}



// Create an instance of a Car
let myCar = Car(brand: "Toyota", year: 1982)

// Understanding Class Inheritance
class Animal{
    var species: String
    init(species: String){
        self.species = species
    }
    func makeSound(){
        print("Meow!")
    }
}

class Dog: Animal{
    var breed: String
    init(breed: String){
        self.breed = breed
        super.init(species: "Dog")
    }
    override func makeSound(){
        print("Woof!")
    }
}

// Create instance of the animal
let genericAnimal = Animal(species: "Cat")
print("Species of Animal: \(genericAnimal.species)")

// Creating instance of a Dog
let myDog = Dog(breed: "Labrador")
print("Species of the dog: \(myDog.species)")
print("Breed of the Dog: \(myDog.breed)")



// Vehicle Class Definition
class Vehicle{
    var brand: String
    var year: Int
    static var numberOfVehicles: Int = 0
    
    init(brand: String, year: Int){
        self.brand = brand
        self.year = year
        Vehicle.numberOfVehicles += 1
    }
    
    func start(){
        print("\(brand) is starting ..")
    }
    
    func stop(){
        print("\(brand) is stopping...")
    }
    
    class func displayNumberOfVehicles(){
        print("Total number of Vehicles: \(numberOfVehicles)")
    }
}

// Stage 1: Define the base class Vehicle
// Stage 2: Initialize the base class with brand and year
// Stage 3: Defines an instance method to start the vehicle
// Stage 4: Defines an instance method to stop the vehicle
// Stage 5: Define a class method to display total number of vehicles

// Example usage:
let myVehicle = Vehicle(brand: "BMW", year: 2020)
myVehicle.start()
Vehicle.displayNumberOfVehicles()

// Mapping Private Access Control in Swift
struct ShoppingCart{
    private var items: [String]
    private var totalPrice: Double
    
    init() {
        items = []
        totalPrice = 0.0
    }
    
    mutating func addItem(_ itemName: String, price: Double){
        items.append(itemName)
        totalPrice += price
        print("Added '\(itemName)' to the cart. Total price: $\(totalPrice)")
    }
    
    func display(){
        print("Items in the cart:")
        for item in items {
            print("- \(item)")
        }
    }
}

// Example usage:
var myCart = ShoppingCart()
myCart.addItem("iPhone Case", price: 29.99)
myCart.addItem("Wireless Earbuds", price: 79.99)
myCart.display()





// Example 2: Library Management Program using private access modifiers
class Library {
    private var books: [String] = []
    
    func addBook(_ bookTitle: String){
        books.append(bookTitle)
        print("Added '\(bookTitle)' to the Library")
    }
    
    func listBooks(){
        if books.isEmpty{
            print("The library is empty")
        } else{
            print("Books in the library")
            for book in books{
                print("- \(book)")
            }
        }
    }
}





// Example Program that creates University Enrollment using Private access
class University{
    private var students: [String] = []
    
    func enrollStudents(_ studentName: String){
        students.append(studentName)
        print("Enrolled Student: \(studentName)")
    }
    
    func listStudents(){
        print("Enrolled students:")
        for student in students{
            print("- \(student)")
        }
    }
}

// Using the University class
let myUniversity = University()
myUniversity.enrollStudents("Monica")
myUniversity.enrollStudents("Agnes")
myUniversity.listStudents()




// Document Status enum
enum DocumentStatus {
    case draft, pending, approved, rejected
    
    mutating func approve() {
        self = .approved
    }
    
    mutating func reject() {
        self = .rejected
    }
}



// Direction enum
enum Direction {
    case north, south, east, west
    
    mutating func turnRight(){
        switch self{
        case .north: self = .east
        case .south: self = .west
        case .east: self = .south
        case .west: self = .north
        }
    }
}




// Light Switch enum
enum LightSwitch{
    case on, off
    
    mutating func toggle(){
        if self == .on {
            self = .off
        } else {
            self = .on
        }
    }
}

// Media Playback enum
enum MediaState{
    case playing, paused, stopped
    
    mutating func playPause(){
        if self == .playing{
            self = .paused
        } else {
            self = .playing
        }
    }
    
    mutating func stop(){
        self = .stopped
    }
}



// Traffic Signal enum
enum TrafficSignal{
    case red, yellow, green
    
    mutating func nextSignal(){
        switch self {
        case .red: self = .yellow
        case .yellow: self = .green
        case .green: self = .red
        }
    }
}

// Create an instance of the enum
var signal = TrafficSignal.red
print(signal)
signal.nextSignal()
print(signal)




// Public Access Control - Classes



// Sport Runner Example
public class SportRunner{
    public var name: String
    public var age: Int
    public static var maxSpeed: Double = 20.0
    
    public init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    public func run(distance: Double){
        print("\(name) is running at max speed \(SportRunner.maxSpeed) meters.")
    }
}

// Usage
let runner = SportRunner(name: "Usain Bolt", age: 40)
runner.run(distance: 1000.0)





// Push Car Example
public class PushCar{
    public var brand: String
    public var color: String
    public static var weight: Double = 150.0
    
    public init(brand: String, color: String){
        self.brand = brand
        self.color = color
    }
    
    public func push(brand: String, color: String){
        print("\(brand) car is being pushed. It weighs \(PushCar.weight) kg.")
    }
}

let pushCar = PushCar(brand: "Toyota", color: "Dark Grey")
pushCar.push(brand: "Toyota Camry", color: "Dark Green")





// Popular Fruits Example
public class PopularFruits{
    public var name: String
    public var price: Int
    public static var availability: Bool = true
    
    public init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
    
    public func displayInfo(name: String, price: Int) {
        let available = PopularFruits.availability ? "available" : "not available"
        print("\(name) is priced at \(price) and is \(available).")
    }
}

let popularFruits = PopularFruits(name: "Orange", price: 20)
popularFruits.displayInfo(name: "Mango", price: 10)





// UniStudent Example
public class UniStudent{
    public var name: String
    public var major: String
    public static var graduationYear: Int = 2024
    
    public init(name: String, major: String){
        self.name = name
        self.major = major
    }
    
    public func study(name: String, major: String){
        print("\(name) is studying \(major) and will graduate in \(UniStudent.graduationYear)")
    }
}

// Usage
let uniStudent = UniStudent(name: "Amaka", major: "Computer Science")
uniStudent.study(name: "Juliet", major: "Accountancy")




// Public Class Variables and Functions
class MathOperations{
    static let pi = 3.14
    
    static func square(_ number: Double) -> Double{
        return number * number
    }
}

print("Pi value: \(MathOperations.pi)")
print("Square of 5: \(MathOperations.square(5))")




class Geometry{
    static let e = 2.718
    
    static func cube(_ number: Double) -> Double{
        return number * number * number
    }
}

print("Euler's number: \(Geometry.e)")
print("Cube of 3: \(Geometry.cube(3))")
