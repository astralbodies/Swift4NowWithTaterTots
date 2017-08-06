//: [Previous](@previous)

import Foundation

enum TaterTotSize {
    case small, regular, huge
}

struct TaterTotStructure {
    let brand: String
    let size: TaterTotSize
    let extras: [String]
}

class TaterTotClass {
    let brand: String
    let size: TaterTotSize
    let extras: [String]

    init(brand: String, size: TaterTotSize, extras: [String]) {
        self.brand = brand
        self.size = size
        self.extras = extras
    }
}

let taterStruct = TaterTotStructure(brand: "Ore Ida", size: .regular, extras: [])
let taterClass = TaterTotClass(brand: "Ore Ida", size: .regular, extras: [])

struct BasicStruct {
    var number = 0
}

class BasicClass {
    var number = 0
}

let struct1 = BasicStruct()
print(struct1.number)
var struct2 = struct1 // make th
struct2.number = 42
print(struct1.number)
print(struct2.number)

//: [Next](@next)
