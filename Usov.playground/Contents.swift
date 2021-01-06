import Foundation

/*:
 - callout(Title): Text

 */

//: ---
//: *Page 63 of 449*
//:---
//:---

var firstVariable: Int8
var secondVariable: UInt8

firstVariable = Int8.max
secondVariable = UInt8.min

print(firstVariable)
print(secondVariable)

//var a = 5
//var b: Int = 4
//var c = b
//b = a
//a = c
//
//print(a)
//print(b)

//let d: Float = 4.345
//let e: Float
//let f: Double

//d = 1 can't change
//e = 2
//f = 3

var numOne: Float = 3.14
var numTwo: Float = 1.01
var res1 = -numOne.truncatingRemainder(dividingBy: numTwo)

var str = "Collection"
str.count

var res2 = -numOne.truncatingRemainder(dividingBy: -numTwo)

var vW = """
*   *   *
 * * * *
  *   *
"""

print(vW)

var isDragon = true
if isDragon {
    print("Dragon")
} else {
    print("Troll")
}

//: **Page #85**
let a = false
let b = false
let c = true
let d = true
let e = false

let a1 = a || (b || c) && (d && e)

//: **Page #97**
let abc = "omega" < "gamma"

//: **Page #98**
var myTuple = (favMovie: "Зеленая миля", favNumber: 7, favFood: "Хичины")
myTuple.2
let (a3, b3, c3) = myTuple
c3
var ksuTuple = ("Some horror movie", 3, "Saumon avec legumes")
let bufferTuple = ksuTuple
ksuTuple = myTuple
myTuple = bufferTuple
let newTuple = (myTuple.1, ksuTuple.1, myTuple.1-ksuTuple.1)

//: **Page #101**
var optionalVar = Optional ("Hello")
print(optionalVar)

//: **Page #103**
var type: String
let monster: String! = "Lololo"
type = monster
print(monster)
print(type)

//: **Page #111** Тернарный оператор условия
let a10 = 1
let a20 = 2
a10 > a20 ? true : false
