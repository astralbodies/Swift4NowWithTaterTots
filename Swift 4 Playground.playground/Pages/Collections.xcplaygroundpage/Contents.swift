//: [Previous](@previous)

import Foundation

let totBrands = ["Ore Ida", "Great Value", "Roundys"]
totBrands.count
for brand in totBrands {
    print(brand)
}
//totBrands.append("Kroger") // won't compile; change to var or create new
var totBrands2 = totBrands
totBrands2.append("Kroger")

//let oreIda = [ "name": "Ore Ida", "founded": 1952, "hq_location": "Pittsburgh, PA" ] // explicit to any
let oreIda:[String: Any] = [ "name": "Ore Ida", "founded": 1952, "hq_location": "Pittsburgh, PA" ]

let brandsInFreezer: Set<String> = ["Ore Ida", "Kroger", "Ore Ida"]

totBrands.forEach { brand in
    print(brand)
}

//: [Next](@next)
