//: [Previous](@previous)  | Page 5 - Loops | [Next Page](@next)
/*:
 ---
 - Callout(Page 159): For-in
 */
//: ### How to use for-in with a decreasing sequence of numbers:
for i in (1...3).reversed() {
    print(i)
}
print()
//: ### Loops with stride
//: * from-through
for i in stride(from:1, through:5, by:2) {
    print(i)
}
//: * from-to
for i in stride(from:1, to:5, by:2) {
    print(i)
}
//: ### For-in loops with Dictionaries:
var countriesAndAllies = ["Россия":"ОДКБ","США":"НАТО","Франция":"EC"]
for (countryName, blockName) in countriesAndAllies {
    print("\(countryName) is in \(blockName)")
}

//: [Previous](@previous)  |  [Next Page](@next)
