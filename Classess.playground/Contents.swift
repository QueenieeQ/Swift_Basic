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
//
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

// compare inscance of classes "==="
// three equal is not the same with two equal
//3 = is basically tests if two variables hold values that internally are equal to each other based on some logic
if hoAnh === minhHieu {
    "hoAnh and minhHieu point to the same memory"
} else {
    "they dont point to the same memory"
}
// not use it very often


// classes can be inheritance
class Vehicles{
    func goVroom(){
        print("Vroom, Vroom")
    }
}
class Car: Vehicles{
    
}

let vinFast = Car()
vinFast.goVroom()

// private setters
// you can mark a property
class Person2{
    private(set) var age: Int
    //    using private(set) that only can be set internally inside this class implementaion and can be read from outside
    init(age: Int){
        self.age = age
    }
    func increaseAge() {
        self.age += 1
    }
}
let baoAnh = Person2(age: 32)
baoAnh.age
//baoAnh.age += 3
// left side of mutating operator isn't mutable
baoAnh.increaseAge()
// still can use function inside private class
baoAnh.age

// designated initializers
// is to ensure that they constuct an instance of the class by ensuring all property value are set and internal structure or the internal validity of that class hold up
// convenience initializer

//  secondary initializer the provides an alternative way to initalize an instance of a class or struct, but delegate to a primary initializer to set up the instance
class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year: Int
//    any initializer that doesn't have word convenience before is a designated initializer
//     a class can have many init
     init(
    
    ) {
        self.model = "X"
        self.year = 2023
    }
//    cant delegate work to another initializer
    init(
        model: String,
        year: Int
    ){
        self.model = model
        self.year = year
    }
}



