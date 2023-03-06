import Foundation

let myName = "Quy"
let myAge = 22
let yourName = "Anh"
let yourAge = 23

if myName == "quy"{
    "Your name is \(myName)"
} else {
    "Wrong Name"
}


if myName == "Quy" {
    "Now my name is correctly"
    
} else if myName == "Ninh"{
    "Wrong Name"
} else {
    "End game"
}


if "Quy" == myName {
    "Uncommon way of doing this"
}

// work in only branches sperated not concurently

if myName == "Quy" && myAge == 22 {
    "Name is Quy and age is 22"
}  else if myAge == 20 {
    "Only guessed the name right"
} else {
    "Both name and age are wrong"
}


if myAge == 22 || myName == "Quy" {
    "Either age is 22 or name is Quy or both code still works"
} else if myName == "Quy" || myAge == 22{
    "It's too late to get in this clause"
}


if myName == "Quy"
    && myAge == 26
    && yourName == "Anh"
    || yourAge == 23 {
    "My name is Quy and I'm 22 and your name is Anh OR ... you are 19"
}

if (myName == "Quy"
    && myAge == 22)
    &&
    (yourName == "BAnh"
     || yourAge == 19){
    "My name is Quy and I'm 22 ... And ... your name is Anh or you are 19"
} else {
    "The End"
}
