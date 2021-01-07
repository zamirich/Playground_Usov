//: [Previous](@previous)  | Page 5 - Loops | [Next Page](@next)
import Foundation
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
/*:
 ---
 - Callout(Page 164): While
 */
//: * while
var i = 1
while i == 2 { //this returns false and the code does not even start
    print("\(i) - from while")
    i += 1
}
//: * repeat-while
var u = 1
repeat {
    print("\(u) - from while-repeat") //this code runs in the beginning regardless of the condition, and only then condition checked
    u += 1
} while u == 2
print()
//: ### Continue
for i in 1...10 {
    if i % 2 == 0 {
        continue //basically it forces to start another iteration in the loop ignoring any other code after this word
        print("hello") //this code will not be executed
    } else {
        print(i)
    }
}
print()
//: ### Break
for i in 1...999 {
    let randomNumber = Int(arc4random_uniform(10))
    print(randomNumber)
    if randomNumber == 2 {
        print("Iteration number \(i)")
        break //so once the statement is true, this command will fully stop the loop and quit it without ending other iterations
    }
}
//: ### Breaking a main loop from nested loop:
mainLoop: for i in 1...5 {
    for y in i...5 {
        if y == 4 && i == 2 {
            break mainLoop
        }
        print("\(i) - \(y)")
    }
}
print()
/*:
 ---
 - Callout(Page 168): #HW
 */
//: ## Task 1
//we have 3 students who attended some lessons and received certain marks
var attendanceList: [String:[String:UInt]] = [:]
attendanceList["Ivanov"] = ["1 Jan 2021":3, "4 Jan 2021":5, "7 Jan 2021":4, "10 Jan 2021":3]
attendanceList["Petrov"] = ["1 Jan 2021":2, "4 Jan 2021":2, "7 Jan 2021":2, "10 Jan 2021":3]
attendanceList["Sidorov"] = ["1 Jan 2021":5, "4 Jan 2021":5, "7 Jan 2021":5, "10 Jan 2021":3]

//calculating average mark per each student
for (student, _) in attendanceList {
    var totalMark: Float = 0
    for (_, mark) in attendanceList[student]! {
        totalMark += Float(mark)
    }
    totalMark /= Float(attendanceList[student]!.count)
    print("\(student) has average of \(totalMark)")
}
print()

//calculating average mark of all students
var totalMark: Float = 0
var numberOfMarks: Float = 0
for (student , _) in attendanceList {
    for (_ , mark) in attendanceList[student]! {
        totalMark += Float(mark)
        numberOfMarks += 1
    }
}
print("Students have average of \(totalMark/numberOfMarks)\n")
//: ## Task 2
//creating an alias for a chess figure with name and it's optional position on the board
typealias Chessman = Dictionary<String,(alpha:Character,num:Int)?>

//creating a dictionary with 3 figures, one of which is taken/killed:
var chessmen: Chessman = ["King":(alpha:"E",num:1),"Queen":(alpha:"D",num:1),"Bishop":nil]

//creating a loop that checks whether every figure is on the board or taken
for (figure, _) in chessmen {
    if chessmen[figure]! == nil {
        print("\(figure) was killed.")
    } else {
        print("\(figure) is positioned at \(chessmen[figure]!!.alpha)\(chessmen[figure]!!.num)")
    }
}
//: [Previous](@previous)  |  [Next Page](@next)
