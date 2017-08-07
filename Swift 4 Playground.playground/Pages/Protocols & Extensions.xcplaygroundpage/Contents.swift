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

class TaterTot {
    var size: TaterTotSize
    var brand: String

    init(size: TaterTotSize, brand: String) {
        self.size = size
        self.brand = brand
    }
}

extension TaterTot {
    convenience init() {
        self.init(size: .regular, brand: "Ore Ida")
    }
}

extension TaterTot {
    func servingSize() -> Int {
        switch size {
        case .small:
            return 18
        case .regular:
            return 9
        case .huge:
            return 5
        }
    }
}

extension TaterTot {
    func embiggenTheTots() {
        if size == .small {
            size = .regular
        } else if size == .regular {
            size = .huge
        }
    }
}

let taterTot = TaterTot()
taterTot.size
taterTot.embiggenTheTots()
taterTot.size


// Protocols

protocol TaterTotProtocol {
    func brandAndSizeDescription() -> String
}

extension TaterTot: TaterTotProtocol {
    func brandAndSizeDescription() -> String {
        return "\(brand) sized \(size)"
    }
}

taterTot.brandAndSizeDescription()

// Codable

var json = """
{
    "name": "Ore Ida",
    "founded": 1953
}
"""

struct Brand: Codable {
    var name: String
    var founded: Int
}

let data = json.data(using: .utf8)!
let decoder = JSONDecoder()
let brand = try? decoder.decode(Brand.self, from: data)

//: [Next](@next)
