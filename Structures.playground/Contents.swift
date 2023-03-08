import Foundation

// structures in swift are way of grounping data together and giving some sort of name
// varlue types

struct Person{
    let name: String
    let age: Int
}
let hoAnh = Person(
    name: "hoAnh",
    age: 23
)
// dot notation
hoAnh.name
hoAnh.name
// swift structures have implicit constructor by complier

struct Person1{
    let name: String
    let birthOfPlace: String
    init(name: String) {
        self.name=name
//        this will mention name in line 19
        
        self.birthOfPlace = " Ha Noi"
    }
}

let c1 = Person1(name: "c1")
c1.birthOfPlace
c1.name

//let c1 = HaBanh(
//    name: "Ha Bao Anh",
//    birthOfPlace: "Ha Noi")
//let c2 = HaBanh(
//    name: "Ha Bao Anh",
//    birthOfPlace: "Ha Noi")
//
// computed properties
struct Person2 {
    let firstName: String
    let lastName: String
//    let fullName: String
//    init(
//        firstName: String,
//        lastName: String
//    ) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.fullName = "\(firstName) \(lastName)"
//    } you can do better way below
    var fullName: String{
        "\(firstName) \(lastName)"
    }
}
let minhHieu = Person2(
    firstName: "Hieu",
    lastName: "Nguyen"
)
minhHieu.firstName
minhHieu.lastName
minhHieu.fullName
// cant change value after assign to variable inside struc

//mutable structure
struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        "Driving."
        currentSpeed = speed
        
    }
}

let immutableCar = Car(currentSpeed: 10)
//immutableCar.drive(speed: 20)

var mutableCar = Car(currentSpeed: 10)
//mutableCar.drive(speed: 30)
mutableCar.currentSpeed
let copy = mutableCar
mutableCar.drive(speed: 30)
mutableCar.currentSpeed
copy.currentSpeed


// structure can't subclass or inherit another structure

struct Bike {
    let nameBike: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike {
        Bike(
            nameBike: self.nameBike,
            currentSpeed: currentSpeed
    )
  }
}
let bike1 = Bike(
    nameBike: "hoAnh",
    currentSpeed: 20
)
//
let bike2 = bike1.copy(currentSpeed: 30)
bike1.currentSpeed
bike2.currentSpeed

