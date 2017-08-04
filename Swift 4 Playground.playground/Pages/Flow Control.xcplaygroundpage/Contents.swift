//: [Previous](@previous)

import Foundation

let seasonings = ["Salt", "Pepper", "Sriracha", "Ketchup", "Ranch Dressing"]
for seasoning in seasonings {
    print(seasoning)
}

for whichOne in 1...10 {
    print("We're printing out number \(whichOne)")
}

var iHaveEatenEnough = false
var eatenCount = 0
while(!iHaveEatenEnough) {
    eatenCount += 2
    print("I just ate two more tots.")
    iHaveEatenEnough = eatenCount > 20
}
print("Yup, I'm full")

if 1 == 2 {
    print("The world just ended")
} else {
    print("All is well")
}

let totsICanEat = 20
switch totsICanEat {
case 0:
    print("You poor soul")
case 1:
    print("I can never stop at just one.")
case 2..<10:
    print("At least you follow the recommended serving size.")
default:
    print("The more, the merrier!")
}

func cookTimeForTots(numberOfTots: Int, temperature: Double) -> TimeInterval {
    guard numberOfTots > 0 || temperature > 0 else {
        return -1
    }

    // Some calculation here
    return 0
}

//: [Next](@next)
