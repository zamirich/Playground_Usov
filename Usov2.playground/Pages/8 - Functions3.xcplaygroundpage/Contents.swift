//: [Previous](@previous)  | Page 8 - Functions (continued) | [Next Page](@next)
//: ### Page 186 - Functions overloading
/*:
 - Note: Swift allows to have several funcitons with the same name, provided that they have different functional type
 */
func say(a: String) {}
func say(a: Int) { }
//if input parameters have same names and types, then funcitons needs to have different output types in order to allow same names for the functions:
func cry() -> String {
    return "one"
}
func cry() -> Int {
    return 1
}
/*:
 - Example: We can't pass the function to a variable or constant without mentioning the type of input parameter in this case
 */
let resultOfFunc = say(a: 4) //so if we just leave say(), we will have an error
/*:
 - Example: But if we somehow mention to the compiler what type will be passed, then it should work correctly
 */
let resultString = cry() + "A"
let resultInt = cry() + 100
//: ### Page 187 - Recursive functions - function that calls itself
func countdown(from num: Int) {
    print(num)
    if num > 0 {
        countdown(from: num-1)
    }
}
countdown(from: 5)
print("Bang\n")
/*:
 - Important: Need to be careful with recursive functions, as one can create an infinite loop that will freeze the app
 */
//: ### Page 188 - Closures, or nameless functions
let functionInLet = { return true } //this constant now has a function type () -> Bool
functionInLet()
/*:
 - Important: Function is a type-reference, i.e. passed by reference:
 */
let trueFunc = {return true}
let anotherTrueFunc = trueFunc
/*:
 ---
 - Callout(Page 188): #HW
 */
//: ### Task #1
//creating an alias for a chess figure with name and it's optional position on the board
typealias Chessman = Dictionary<String,(alpha:Character,num:Int)?>

//creating two dictionaries with 3 figures, one of which is taken/killed:
var whiteChessmen: Chessman = ["King":(alpha:"E",num:1),"Queen":(alpha:"D",num:1),"Bishop":nil]
var blackChessmen: Chessman = ["King":(alpha:"E",num:8),"Queen":(alpha:"D",num:8),"Knight":(alpha:"B",num:8)]

//creating a function that checks whether every figure is on the board or taken
func chessAnalyzer(figures: Chessman) {
    for (figure, _) in figures {
        if figures[figure]! == nil {
            print("\(figure) was killed.")
        } else {
            print("\(figure) is positioned at \(figures[figure]!!.alpha)\(figures[figure]!!.num)")
        }
    }
}
chessAnalyzer(figures: whiteChessmen)
chessAnalyzer(figures: blackChessmen)
print()
//: ### Task #2
func changeChessmen(figures: inout Chessman) {
/*:
- Important: TODO
*/
}
//: [Previous](@previous)  |  [Next Page](@next)
