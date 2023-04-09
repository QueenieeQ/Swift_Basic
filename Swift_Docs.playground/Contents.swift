import UIKit

var greeting = "Hello, playground"


let label = " The Width is"
let width = 94
let widthLabel = label + String(width)
let apple: Int = 3
let pineapple = 4
let appleSumary = "I have \(apple) "
let pineappleSummary = "I have \(pineapple) "

let quatation = """
This is very long quote and this
will
spam
about
 3
line
All fruit i have is \( apple + pineapple) pieces of fruit
"""

// array and dictionaries
var fruit = ["apple", "banana", "orange","grape" ]
fruit[1] = "strawberry"
// dictionary is array with :
var occupations = [
    "Tung": "plumber",
    "Hieu": "Gammer",
    "Quang": "Foreign languague student"]

occupations ["Quyet"] = "Part time"
fruit.append("lychee")
print(fruit)

let individualScore = [75,43, 103, 87, 12]
var teamScore = 0
for score in individualScore{
    if score > 50{
        teamScore += 3
    } else{
        teamScore += 1
    }
}
print(teamScore)

// add ? after variable to make that become optionals

var optionalString: String? = " Hello"
print(optionalString == nil)
print(optionalString!)

var optionalName: String? = " Ninh Xuan Quy"
var greeting2 = "Hello!"
if let name = optionalName{
    greeting2 = "Hello + \(name)"
    
}



