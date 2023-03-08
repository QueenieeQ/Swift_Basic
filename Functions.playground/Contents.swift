//import UIKit
//
//var greeting = "Hello, playground"
import Foundation


let myName = "Quy"
var yourName = "Ninh"
// swift using 2 variable system is let and var
// var can mutable (co the thay doi duoc)
// let cant change value of variable
// var can be assign again but let cant do that

//myName = yourName
var names = [
//    if you change to "let" in line above, the rest of code below wont work at all because let cant be change variable inside it,
myName,
yourName
]
//names=["This is tester"]
// you can mutable variable "Names" already declare above
names.append("Have")
names.append("Fun")

let var1  = "Foo"
var var2 = var1
var2 = "Foo 2"
var1
var2
//you can change variable
let moreNames = [
 "Ho",
 "Anh"
]
var copy  = moreNames
// you can assign variable to another let variable and it get a copy of entire array above
copy.append("Love") // add a value in array "moreNames" in variable "copy" contain original value
moreNames // still bring original value
copy

// structures and classes
let oldArray = NSMutableArray(
array: [
"Love",
"You"
]
)
//With NSMutableArray  let can be chagne value in it
oldArray.add("At")
var newArray = oldArray
newArray.add("End")
oldArray
newArray

// can be change value inside a function must be cant change value??

let someNames = NSMutableArray(
    array: [
        "This",
        "Is"]
)

//This is function look like in swift
func changeTheArray(_ array: NSArray){
//    NSArray is subclass of NSMutableArray
    let copy = array as! NSMutableArray // this is bad code, can be use without getting bugged
//    this get assume mutable code for immutable value
    copy.add("HaBanh")
    // copy value is only inside function

    
}
changeTheArray(someNames)
someNames






