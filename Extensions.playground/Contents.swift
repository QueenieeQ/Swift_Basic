import Foundation
// can add functionality to existing type and they can extend exsting types

extension Int{
    func plus3() -> Int {
        self + 3
//        self inside a function refer to current instance
    }
}
let two = 2
two.plus3()
two.self

struct Person {
    let firstName: String
    let lastName: String
//    init( fullName: String)
//    if you init a constructor inside a struct it will be replace your original constructor
//     cant using firstName and lastName anymore
    
}
extension Person{
    init(fullName: String){
        let components = fullName
            .components(separatedBy:  " ")
        self.init(
            firstName: components.first ?? fullName,
            lastName: components.last ?? fullName
        )
    
    }
}

let person = Person(fullName: "Ho Anh")
person.firstName
person.lastName
//print(" \(firstName) ")

// add conformance to a exsting type

protocol GoesMeow{
    var meowValue: String {get}
    func goMeow() -> String
}
extension GoesMeow{
    func goMeow() -> String {
        " \(self.meowValue) go Meow"
    }
}

struct Cat{
    let catName: String
    let color: String
}
let puss = Cat(
    catName: "puss",
    color: "orange"
)

extension Cat: GoesMeow{
    var meowValue: String{
        " Cat name \(self.catName) have color is \(self.color)"
    }
    
}

puss.goMeow()
print(" \(puss.catName)")
print(" \(puss.goMeow())")

// extension on classes and with convenience initializers
// extend existing data type and add convenience init to classes

class MyDouble{
    let value: Double
    init(value: Double){
        self.value = value
    }
}

extension MyDouble {
    convenience init(){
        self.init(value: 0)
    }
}

MyDouble().value
// extend existing protocols
extension GoesMeow{
    func goMeowMeowSecond() -> String{
        " \(self.meowValue) this is the second extension add to a protocol GoesMeow and meow more"
    }
}
puss.goMeowMeowSecond()
