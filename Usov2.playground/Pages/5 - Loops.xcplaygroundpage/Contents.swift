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
print()
//: * from-to
for i in stride(from:1, to:5, by:2) {
    print(i)
}
print()
//: ### For-in loops with Dictionaries:
var countriesAndAllies = ["Россия":"ОДКБ","США":"НАТО","Франция":"EC"]
for (countryName, blockName) in countriesAndAllies {
    print("\(countryName) is in \(blockName)")
}
print()

//: ### In case we don't need values, but only keys, or vice versa:
for (countryName, _) in countriesAndAllies {
    print("\(countryName)")
}
print()
//: ### Enumerated
let myMusic = ["rock","dance","dub"]
for (index, music) in myMusic.enumerated() {
    print("\(index+1). I love \(music)")
}
print()
//: ### Looping the String
let myName = "Zamir"
for letter in myName {
    print(letter)
}
print()
/*:
 ---
 - Callout(Page 163): Nested loops
 */
var resultsOfGames = ["Red Wings":["2:1","2:3"],"Capitals":["3:6","5:5"],"Penguins":["3:3","1:2"]]
for (team, results) in resultsOfGames {
    for result in results {
        print("Game with \(team): \(result)")
    }
}
print()

//last page 163
//: [Previous](@previous)  |  [Next Page](@next)
