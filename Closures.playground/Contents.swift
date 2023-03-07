//closure is a special types of functions that are created in line, pass them to another functions for instance
//self-contained block of func that can be passed around and used in another fuction 
import Foundation

//func add(lhs: Int, rhs: Int) -> Int {
//    lhs + rhs
//}

let add: (Int, Int) -> Int =
{
    ( leftHandSide: Int, rightHandSide: Int) -> Int in
    leftHandSide + rightHandSide
}
// line 11 and 12 can pass to another function
 add(20,30)

// pass function to another function
func customAdd(
    _ leftHandSide: Int,
    _ rightHandSide: Int,
//   _ ignore external argument names
    using function: (Int, Int) -> Int) -> Int {
//        internal argument names
        function(leftHandSide, rightHandSide)
}



customAdd(20,
          30
          , using: {(leftHandSide: Int, rightHandSide: Int) -> Int in
            leftHandSide + rightHandSide
}
)

customAdd(20,
          30
){ (leftHandSide: Int, rightHandSide: Int) -> Int in
    leftHandSide + rightHandSide
}

customAdd(30,
          30
){ (leftHandSide, rightHandSide) in
    leftHandSide + rightHandSide
}

customAdd(
    20,
    30
){
     $0 + $1
    }
//
//let ages = [30, 20, 19, 40]
//ages.sorted(by:{(leftHandSide: Int, rightHandSide: Int) -> Bool in
//    leftHandSide < rightHandSide
//})
//
//func < (leftHandSie: Int, rightHandSide:Int) -> Bool {
//

//}
let ages = [30,20,15,18]
ages.sorted(by: <)
ages.sorted(by: >)

func customAdd2(
    _ leftHandSide: Int,
    _ rightHandSide: Int,
//   _ ignore external argument names
    using function: (Int, Int) -> Int) -> Int {
//        internal argument names
        function(leftHandSide, rightHandSide)
}

customAdd2(
    20,
    30,
using: {$0 + $1 + 10})
//trailing closure syntax

func add10To(_ value: Int) -> Int {
    value + 10
}
func add20To(_ value: Int) -> Int {
    value + 20
}

func doAddition(
    on value: Int,
    using function:(Int) ->Int
) -> Int{
    function(value)
}
doAddition(on: 20 ){
    (value) in
    value + 30
    //trailing closure syntax
}

doAddition(
    on: 20,
    using: add10To(_:)
)
doAddition(
    on: 20,
    using: add20To(_:)
)
// complete out of mind in this section
// very lazy in this closure things 
