import Foundation

// protocol is special kind of object kind of interfaces in java

// that is an interface you create a set of rules that object which conform to a protocol have to follow
protocol CanBreathe{
    func breath()
}

// function can leave body of function in blank

struct Animal: CanBreathe {
    func breath() {
        print("Animal can breath")
    }
}
// struct cannt have super class so they can be inherit
// but they allow inherit from protocol

struct Person:CanBreathe{
    func breath() {
        print("Person Have fun")
    }
}

let dog = Animal()
dog.breath()
let hoAnh = Person()
hoAnh.breath()

protocol CanJump {
    func jump()
//     so you cannt have body in here so you need to use extension to implement body inside
}

protocol CanMeow{
    func meow()
}

extension CanJump{
    func jump(){
        print(" Jumping...")
    }
}

// instantiate = start, begin
struct Cat: CanJump, CanMeow{
//    after using extension you can see not have any issue here
//     like type 'Cat' does not conform to protocol 'CanJump'
    func meow() {
        print(" Meow")
    }
}

var puss = Cat()
puss.jump()
puss.meow()

// aside of define of function header that conforming object have to impelement
// can define variable
protocol HasName{
    var name: String { get }
//
    var age: Int { get set }
}
extension HasName {
    func describeMe() {
        print("your name is \(name) and your age is \(age) year old")
    }
    mutating func increaseAge(){
        self.age += 1
    }
    
}
struct Dog : HasName {
    let name: String
    var age: Int
    
}
var woof = Dog(
    name: "Belo",
    age: 2
)
woof.name
woof.age
woof.age += 2
woof.age
woof.describeMe()
woof.increaseAge()
woof.age
// all interface or protocol in swift is like blueprint every class can use in to built own func

// mutatating function
// see you later this day

