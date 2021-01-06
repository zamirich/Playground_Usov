//: [Previous](@previous)  | Page 3 - Sets | [Next Page](@next)
/*:
 ---
 - Callout(Page 143): Sets
 */
//: ### Here are all means of declaring Set:
var option1: Set<String> = ["A", "B"]
var option2: Set = ["C", "D"]
print(option2)
var option3 = Set<String>(arrayLiteral: "E", "F")
var option4 = Set(arrayLiteral: "G", "H")
//: ### Creating empty Set:
var emptySet = Set<String>()
//: ### Deleting existing Set
option1 = []
//: ### Adding new elements:
option2.insert("E") //this returns an array with Bool of whether inserting was sucessfull and with the element that was added and here's how it can be seen separately:
option2.insert("E").0 //already false, as I am trying for the second time, but to return only bool
//: ### Trying to add the same element:
option2.insert("E") //no error and no changes, but says inserted - false
print(option2)
//: ### Checking if there are some elements:
option2.contains("E")
option2.contains("Zz")
//: ### Removing elements:
option2.remove("E") //as with arrays, not just removes, but returns the element
option2.remove("Zz") //returns nil if not found
option2.removeFirst() //removes first, although awkward, as Sets are has no proper sequence
option2.removeAll()
/*:
 ---
 - Callout(Page 147): Basic properties and methods of Sets
 */
//Let's say we have some Sets:
let setOne: Set = [0,2,4,6,8]
let setTwo: Set = [1,3,5,7,9]
var setThree: Set = [2,3,6,8,9,10,11,77]
var subSet: Set = [3,10]
let subSetForOne: Set = [0,2,4,6,8]
//: * Intersect
//returns new Set where values of set A has same values in set B
setOne.intersection(setThree)
setOne.intersection(setThree).sorted() //same as previous but sorted, so it return Array, not a Set
//: * ExclusiveOr
//returns new Set where values of set A are unique to ones in set B
setOne.symmetricDifference(setThree)
setOne.symmetricDifference(setThree).sorted()
//: * Union
//combining two sets in one set
setOne.union(setTwo)
setOne.union(setTwo).sorted()
//: * Subtract
//Strips out elements of Set B from Set A
setThree.subtracting(setOne)
setThree.subtracting(setOne).sorted()
//in this case, initial sets did not change:
print(setThree.sorted())

//and here is how we can change initial Sets::
setThree.subtract(setOne)
print(setThree.sorted())
//: ### Checking if a Set is a subset of another one
subSet.isSubset(of: setThree)
subSet.isSubset(of: setTwo)
//: ### Checking if a Set is a superset for another one
subSet.isSuperset(of: setThree)
setThree.isSuperset(of: subSet)
//: ### Checking if there are any Intersection (returning a True if no common elements)
setOne.isDisjoint(with: setThree)
setTwo.isDisjoint(with: setThree)
setOne.sorted()
setTwo.sorted()
setThree.sorted()
//: ### Checking if a set is subset/superset and not exactly identical to another one
subSet.isStrictSubset(of: setThree)
setThree.isStrictSuperset(of: subSet)
subSet.sorted()
setThree.sorted()

setOne.isStrictSubset(of: subSetForOne)
subSetForOne.isStrictSuperset(of: setOne)
setOne.sorted()
subSetForOne.sorted()
//: [Previous](@previous)  |  [Next Page](@next)
