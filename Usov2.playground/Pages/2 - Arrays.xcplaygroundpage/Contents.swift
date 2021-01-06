//: [Previous](@previous)  | Page 2 - Arrays |  [Next Page](@next)
/*:
 ---
 - Callout(Page 132): Arrays
 */
let aBC = Array(arrayLiteral: 1,2,3)
aBC
//: ### Creating array with the same value of N times
let repeatingArray = Array(repeating: "Ho", count: 3)
//: ### Two ways of declaring arrays (no data yet, so can't use)
let array1: Array<Int>
let array2: [Int]
//: ### Two ways of initializing empty arrays (can use it already, just no data)
var emptyArray: [Int] = []
var anotherEmptyArray = [Int]()
//: ### Similar ways of creating array with a number of nil values
var alphaArray = [String?](repeating: nil, count: 5)
var bettaArray: [String?] = [nil, nil, nil, nil, nil]
//: ### Multi-Dimensional Arrays
var arrayOfArrays = [[1,2],[4,5,6,8],[7,8,9],[]]
arrayOfArrays[1]
arrayOfArrays[1][0]
/*:
 ---
 - Callout(Page 139): Basic properties and methods of Arrays
 */
//: * Count - counting number of elements in array
arrayOfArrays.count
//: * isEmpty - checking if there are any elements:
arrayOfArrays.isEmpty
arrayOfArrays[3].isEmpty

//let's say we have a big sequence of Int in our array:
var longArray = [Int](1...7)
//this example can be helpful for array of sequence from 1 to N:
longArray.count - 1 //this should be read like 15 - 1.

//while this example can work with any arrays:
longArray[longArray.count-1] //should be read like element in array with index[count-1], i.e. last element
longArray[longArray.count-4]
longArray[longArray.count-1] - longArray[longArray.count-4]
//: * Suffix - this allows to return certain number of last elements in array:
longArray.suffix(4)
//: * Returning first and last element of array (as optional by default):
longArray.first
longArray.last
print(longArray.first)
print(longArray.first!)
//: * Adding new element to the end of array:
longArray.append(8) //adding last number manually
print(longArray)
longArray.append(longArray.count + 1) //adding last number with formula
print(longArray)
//: * Adding new element at certain index of array:
longArray.insert(77, at: 3)
print(longArray)
//: * Reversing sequence of the array:
longArray.reverse()
print(longArray)
//: * Removing some elements:
longArray.remove(at: 3) //not just removing, but also returning removed value
longArray.removeLast()
longArray.removeFirst()
print(longArray)
//: * Removing all elements:
longArray.removeAll() //returns empty array
/*:
 ---
 - Callout(Page 141): Removing elements from constant array:
 */
let constantArray = [3,7,10,12,19,7]
constantArray.dropLast() //removing just last one
constantArray.dropFirst() //removing just first one
constantArray.dropFirst(4) //removing first 4
print(constantArray) //please note, that dropping does not change initial array, but rather returns new one that can be used
//: * Contains - checking if some element exists in our Array (returns Bool answer):
constantArray.contains(19)
constantArray.contains(20)
//: * Checking when some element first appears in Array (returns index number as optional value, or nil)
constantArray.index(of:7)
constantArray.index(of:99)
//: * Checking for min and max element (only works for comparable elements):
constantArray.min()
constantArray.max()
//: * This is how values are compared:
let var1 = 5.3
let var2 = 5.31
var1.hashValue
var2.hashValue
//: [Previous](@previous)  |  [Next Page](@next)
