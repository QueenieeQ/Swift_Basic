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
    case screenshots
    case applications
}
// path must be URL to link data
let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https://apple.com")!
//   "!"  unary prefix
)
