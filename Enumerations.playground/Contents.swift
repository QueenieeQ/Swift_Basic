import Foundation

// enumerations are categoriztion of similar values together that are named , and every type of high program language have this
struct Animal{
    let type: String
    init(type: String) {
        if type == "cat" || type == "dog" || type == "meow"{
            self.type = type
    }else {
        preconditionFailure()
    }
}
}


enum Animals{
//    define your different types of animals giving them names
    case cat
    case dog
    case meow
//    case cat, dog, meow complete legit
}

let cat = Animals.cat
cat


if cat == Animals.cat{
    " this is a cat"
    
} else if cat == Animals.dog{
  " this is a dog"
}else{
    " this is a cat can meow all the time or something else"
}


func == (
    lhs: Animals,
    rhs: Int
) -> Bool{
    lhs == .cat && rhs == 3
//    broken things but still work =))
}


//switch statments

func describeAnimals(_ animal:Animals){
    
    switch cat{
    case .cat:
        " this is a cat"
        break
    case .dog:
        " this is a dog"
        break
        //case .meow:
        //    " this is a cat can meow all the time or something else"
        //    break
    default:
        " this is something else"
        
        //     unused cases can be remove and add default
        
    }
}
describeAnimals(Animals.dog)

// carefully taking care of new case add to as switch cases



// Enumerations with associated values




enum Shortcut {
    case wwwUrl(path: URL)
//    add value to cases by add path: URL
//    path is name of argument and URL is type of date stored
    case screenshots(location: String, content: String)
    case applications(path: String, name: String)
}
let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https://apple.com")!
//   "!"  unary suffix
)

// equilty operators

switch wwwApple{
    
case .wwwUrl(
    path: let path
):
    path
    break
case .screenshots(
    location: let location,
    content: let content
):
    location
    content
    break
case .applications(
    path: let path,
    name: let name
):
    path
    name
}


switch wwwApple{
    
case let .wwwUrl(
    path
):
    path
    break
case let .screenshots(
    location,
     content
):
    location
    content
    break
case .applications(
    let path,
    let name
):
    path
    name
}

// check if a shorcut of instance of enumerations yes or no
if case let .wwwUrl(path) = wwwApple {
    path
}


switch wwwApple{
    
case .wwwUrl(
    let path
):
    path
    break
case .screenshots(
     let location,
     let content
):
    location
    content
    break
case .applications(
     let path,
     let name
):
    path
    name
}
// asign variable to a case of a enums

let bioShock = Shortcut.applications(
    path: "C:/Games/Bioshock/Bin",
    name: "Bioshock"
)

// check a variable in a case of enums
if case let .applications(_, name) = bioShock {
    name
}
if case let .applications(path, name) = bioShock{
    path
    name
}

// case statement and switch case  for enums with associated value
