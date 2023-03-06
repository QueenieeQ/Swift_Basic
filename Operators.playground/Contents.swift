import Foundation

//1. unary prefix
//one value
let ho = !true
// add apostorphe in to flip value

let myAge = 22
let yourAge = 20
// greater than and less than operators
// 2. unary postfix
// come after variable and work with only one variables
let name = Optional("Anh")
type(of: name)
// Optional can contain null value or value assigned
let unaryPostFix = name!
type(of: unaryPostFix)



if myAge > yourAge{
    "i'm older than you"
}else if myAge < yourAge{
    "i'm younger than you"
}else{
    "Equal to each other, same age"
}
//3. binary infix
// work with 2 value, infix 'in between'

let result = 1 + 2
let names = "Ho" + " " + "Anh"
let myMotherAge = myAge + 30
myMotherAge
let doubleMyany = myAge * 2
 

// three type of operator mention above
// one more thing is ternary
let age = 30
let message: String
if age >= 18{
    message = "you are an adult"
    
}else{
    message = "you aren't an adult"
}
message
let age2 = 16
//let message2: String
//let message = Conddition ? Value If condition met : Value if contion is not met
let message2 = age2 >= 18
    ? "you're an adult"
    : "you're not yet an adult"
//no need to be remention variable above in ? !
message2
var age3 = 14
let message3 = age3 >= 15 ? "You're a teen" : "you're not yet a teen"
// ternary operator
