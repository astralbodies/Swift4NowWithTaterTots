/*:
# Constants, Variables, Data Types, and Tuples
*/
import Foundation

/*:
### Constants
*/

let taterTotCount = 3
let oneLessTaterTot = taterTotCount - 1
let negativeTots = -taterTotCount
let 🍟 = "fries"
print(🍟)
// taterTotCount += 1 // compilation error!

/*:
### Variables
*/

var numberOfTots = 0
numberOfTots = numberOfTots + 1
numberOfTots += 1

/*:
### Data Types
*/

let brandName = "Ore Ida"
var secondBrandName: String
secondBrandName = "Roundys"
secondBrandName = "Great Value 😄"
secondBrandName.characters.count

let count: Int = 0
let count2 = 0
let count3 = 0.0
let count4 = Double(count)

/*:
### Tuples
*/

let totCountAndBrand = (10, "Ore Ida")
totCountAndBrand.0
totCountAndBrand.1
let totCountAndBrand2 = (count: 10, brand: "Ore Ida")
totCountAndBrand2.count
totCountAndBrand2.brand

//: [Next](@next)
