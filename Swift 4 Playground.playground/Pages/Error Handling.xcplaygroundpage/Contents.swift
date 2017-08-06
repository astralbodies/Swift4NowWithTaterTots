//: [Previous](@previous)

import Foundation

enum TaterTotCookingError: Error {
    case insufficientQuantity
    case thawedBeforeCooking
    case notCrispyEnough
    case didNotBuyOreIdaBrand
}

func doesSomethingWithCooking() throws -> String {
    // Oops the tater tots got thawed before baking!
    throw TaterTotCookingError.thawedBeforeCooking
    return "TotsAreCooked"
}

let result = try? doesSomethingWithCooking()

do {
    try doesSomethingWithCooking()
} catch {
    print(error)
}

//: [Next](@next)
