import Foundation

// class are like structure but they are not value types,
// reference types and also they allow for mutability without having to prefix thing

//struct Person{
//    var name: String
//    var age: Int
//}


class Person {
    var name: String
    var age: Int
    
    init(
        age: Int,
        name: String
    ){
        self.name = name
        self.age = age
    }
    func increaseAge() {
        self.age += 1
    }
}
// mutating is not valid on instance methods in classes
// always have to create constructor

let hoAnh = Person(
    age: 23,
    name: "HoAnh"
)
hoAnh.age
hoAnh.increaseAge()
hoAnh.age

// classes allow for internal mutability


// reference type

hoAnh.age
let minhHieu = hoAnh
hoAnh.increaseAge()
hoAnh.age
minhHieu.age

// now minhHieu and hoAnh point to the same instance of person in memory

