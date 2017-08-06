//: [Previous](@previous)

import Foundation

func doStuff() {}
doStuff()

func printStuff() {
    print("Stuff")
}
printStuff()

func createBreakfastReminder(guests: Int, time: Date) {
    // Do something with the reservation
    let personPluralized = guests == 1 ? "person" : "people"
    print("Recorded reservation for \(guests) \(personPluralized) at \(time)")
}
createBreakfastReminder(guests: 1, time: Date())

func wordNumberOfTimes(word: String, times: Int) -> String {
    var combined = ""
    for _ in 1...times {
        combined.append("\(word)\n")
    }
    return combined
}
let wordsTimes = wordNumberOfTimes(word: "tots", times: 10)

// Function Types
func bakeTots(quantity: Int, howLong time: TimeInterval) -> String {
    if time > (30 * 60) {
        return "You burned \(quantity) tots!"
    } else {
        return "Baked \(quantity) tots."
    }
}

func deepFryTots(quantity: Int, howLong time: TimeInterval) -> String {
    if time > (15 * 60) {
        return "You burned \(quantity) tots!"
    } else {
        return "Fried \(quantity) tots."
    }
}
var totCookFunction: (Int, TimeInterval) -> String
totCookFunction = bakeTots(quantity:howLong:)
totCookFunction(15, 30 * 60)
totCookFunction = deepFryTots(quantity:howLong:)
totCookFunction(15, 30 * 60)

// Closures
let totBrands = ["Ore Ida", "Great Value", "Roundys", "Market Pantry", "Trader Joes", "Safway"]
let sortedBrands = totBrands.sorted()
let reverseBrands = totBrands.sorted(by: { (left, right) -> Bool in
    return left > right
})
let reverseBrands2 = totBrands.sorted { (left, right) -> Bool in
    return left > right
}
let reverseBrands3 = totBrands.sorted { return $0 > $1 }


//: [Next](@next)
