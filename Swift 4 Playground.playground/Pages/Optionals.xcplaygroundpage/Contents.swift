//: [Previous](@previous)

import Foundation

//let countedTots = ?
var countedTots: Int?
countedTots = 1
print(countedTots.debugDescription)
if countedTots == 1 {
    print("You have \(countedTots.debugDescription) tots")
    print("You have \(countedTots!) tots")
}
if let countedTots = countedTots {
    print("You have \(countedTots) unwrapped tots")
}
print(countedTots!)
countedTots = nil
//print(countedTots!) // Fatal error

var totSeasoning: String? = nil
totSeasoning = "Moo"
let characterCount = totSeasoning?.characters.count

//: [Next](@next)
