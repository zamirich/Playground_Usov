//: [Previous](@previous)  | Page 1 - Typealias, switch, tuple |  [Next Page](@next)
/*:
 ---
 - Callout(Page 116): typealias and tuple
 */
typealias Text = String

let variablesArray: [Text] = ["123", "321", "ABC231"]

for element in variablesArray {
    if let i = Int(element) {
        print(i)
    } else {
        print("This is not a number")
    }
}

typealias TupleType = (numberOne: Text?, numberTwo: Text?)?

var varName1: TupleType = ("190","67")
var varName2: TupleType = ("100", nil)
var varName3: TupleType = ("-65", "70")

if varName1!.0 != nil && varName1!.1 != nil {
    print(varName1!.0!)
    print(varName1!.1!)
}

if varName2!.0 != nil && varName2!.1 != nil {
    print(varName2!.0!)
    print(varName2!.1!)
}

if varName3!.0 != nil && varName3!.1 != nil {
    print(varName3!.0!)
    print(varName3!.1!)
}
/*:
 ---
 - Callout(Page 119): Switch with Where
 */
var a = 21
switch a {
case 0...10:
    print("1")
case _ where a>10 && a<25: //this is how can I do like a>10, i.e. Bool check
    print("Hurrah!")
    fallthrough //forces checking next case instead of quitting the switch
case 20...1000:
    print("Hurrah-Hurrah!")
default:
    print("3")
}
/*:
 ---
 - Callout(Page 124): Switch with Tuple
 */
var dragonChar = ("purple", 2.4)
switch dragonChar {
case ("green", 0..<2):
    print("1")
case ("green", 2...100):
    print("2")
case ("red", 2...100):
    print("3")
case ("blue", _), ("purple", _) where dragonChar.1 > 2:
    print("4")
default:
    print("We can't accept this dragon")
}
/*:
 ---
 - Callout(Page 125): Switch with Tuple with declaring new var inside Tuple
 */
switch dragonChar {
case ("green", 0..<2):
    print("1")
case ("green", 2...100):
    print("2")
case ("purple", let weight) where weight > 2:
    print("3")
default:
    print("We can't accept your dragon")
}
/*:
 ---
 - Callout(Page 127): #HW
 */
typealias Operation = (operandOne: Double, operandTwo: Double, operation: Character)
let firstOp: Operation = (3.1, 33, "*")

switch firstOp.operation {
    case "+": print(firstOp.0 + firstOp.1)
    case "-": print(firstOp.0 - firstOp.1)
    case "*": print(firstOp.0 * firstOp.1)
    case "/": print(firstOp.0 / firstOp.1)

    default: break
}
//: [Previous](@previous)  |  [Next Page](@next)
