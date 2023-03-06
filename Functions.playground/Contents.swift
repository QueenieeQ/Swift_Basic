import Foundation

func noArgumentAndNoReturnValue(){
    print("I don't have body function")
}
noArgumentAndNoReturnValue()


func plusTwo(value: Int){
    let newValue = value + 2
    
}
plusTwo(value: 30)

func newPlusTwo(value: Int) -> Int{
     value + 2
}
// -> (data type) == return of value

newPlusTwo(value: 32)


func newPlusThree(value: Int) -> Int{
    return value + 3
}
newPlusThree(value: 30)


func customAdd(
    value1: Int,
    value2: Int) -> Int {
        value1 + value2
}

let customAdded = customAdd(
    value1: 10,
    value2: 20)
func customMinus(
    _ leftHandSide:Int,
    _ rightHandSide:Int
) -> Int {
        leftHandSide - rightHandSide
    }
let customSubtracted = customMinus(
     20,
     10)
func customAdded(_ value1: Int,_ value2: Int) -> Int{
    return  value1 + value2
}
var customAdd1 = customAdded( 10, 20)


// add _ before value to ignore external argument names
customAdd(value1: 10, value2: 20)


//@discardableResult
//
func myCustomAdd(
    _ leftHandSide: Int,
    _ rightHandSide: Int
) -> Int {
    leftHandSide + rightHandSide
}

myCustomAdd(
    10,
    15
)

// swift can have function inside a function
func doSomethingCompalicated(
    with value: Int
) -> Int{
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value + 3)
}
doSomethingCompalicated(with: 30)

func getFullName(
    firstName: String = "Quy",
    lastName:String = "Ninh"
) -> String {
    "\(firstName) \(lastName)"
}
getFullName()
getFullName(firstName: "Love")
getFullName(lastName: "You")
getFullName(firstName: "Love", lastName: "You")

// end of first day learning swift 
