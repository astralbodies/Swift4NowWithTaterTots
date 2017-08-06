//: [Previous](@previous)

import Foundation

enum TaterTotSize {
    case small, regular, huge

    func mass() -> Double { // This gets a
        switch self {
        case .small:
            return 5.0
        case .regular:
            return 8.4
        case .huge:
            return 12.8
        }
    }
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
var struct2 = struct1 // make this a constant to start
struct2.number = 42
print(struct1.number)
print(struct2.number)

let basic1 = BasicClass()
let basic2 = basic1

print("Basic1: \(basic1.number)")
basic1.number = 42
print("Basic1: \(basic1.number)")
print("Basic2 after changing basic1: \(basic2.number)")
basic1 === basic2


struct TaterTotBatch {
    let totSize: TaterTotSize
    let quantity: Int
    var totalMass: Double {
        return Double(quantity) * totSize.mass()
    }
}

let batch = TaterTotBatch(totSize: .huge, quantity: 20)
print(batch.totalMass)
//batch.totalMass = 100

class Counter {
    var count = 0

    func increment() {
        count += 1
    }

    func increment(by amount: Int) {
        count += amount
    }

    func reset() {
        count = 0
    }
}


class PotatoSnack {
    var kindOfPotato: String

    init(kindOfPotato: String) {
        self.kindOfPotato = kindOfPotato
    }

    func printWhatAmI() {
        print("I am a potato snack.")
    }
}

class TaterTot: PotatoSnack {
    let size: TaterTotSize
    var brand: String?

    init(size: TaterTotSize) {
        self.size = size
        super.init(kindOfPotato: "Mixed")
    }

    convenience init() {
        self.init(size: .regular)
    }

    override func printWhatAmI() {
        if let brand = brand {
            print("I am a perfect \(brand) brand tater tot.")
        } else {
            print("I am a delicious tater tot.")
        }
    }

    deinit {
        print("About to deint.")
    }
}

let potatoSnack = PotatoSnack(kindOfPotato: "Russet")
let taterTot = TaterTot(size: .huge)

potatoSnack.printWhatAmI()
taterTot.printWhatAmI()

// Go back and add brand optional
taterTot.brand = "Ore Ida"
taterTot.printWhatAmI()

// Deinitilization
var tot: TaterTot? = TaterTot()
tot = nil

class Employee {
    var name: String
    weak var boss: Employee? {
        didSet {
            boss?.directReports.append(self)
        }
    }
    var directReports = [Employee]()

    init(_ name: String) {
        self.name = name
    }

    deinit {
        print("Calling deinit on \(name)")
    }
}

extension Employee: CustomDebugStringConvertible {
    var debugDescription: String {
        if let boss = boss {
            return "\(name) and their boss is \(boss.name)"
        }
        return "\(name)"
    }
}

// Start these off as let and then change to optional to show deinit
var samantha: Employee? = Employee("Samantha")
var kirk: Employee? = Employee("Kirk")
kirk!.boss = samantha
samantha = nil

let snack: PotatoSnack = TaterTot()
snack.printWhatAmI()
// snack.size doesn't exist
(snack as? TaterTot)?.size

//: [Next](@next)
