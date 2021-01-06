//: [Previous](@previous)  | Page 4 - Dictionaries | [Next Page](@next)
/*:
 ---
 - Callout(Page 151): Dictionaries
 */
//: ### First example of a simple Dictionary, let's say for English-to-Emoji dictionary
var engEmojiDictionary = ["dog":"🐶","cat":"🐱","pig":"🐷"]
engEmojiDictionary["cat"]
//: ### Here's how we can declare a dictionary from an array of tuples with 2 values in each:
let baseTuple = [(1,"A"),(2,"B"),(3,"C")]
let newDictionary = Dictionary(uniqueKeysWithValues: baseTuple)
newDictionary[2]
//: ### An elegant way to create a Dictionary from two Arrays:
let airportCode = ["SVO", "DME", "VNO"]
let airportCapacity = [34.1,24.4,14.1] //mln passengers per year
var airportDictionary = Dictionary(uniqueKeysWithValues: zip(airportCode,airportCapacity))
airportDictionary["VNO"]
//we use the key not only to return the value, but also to change the value:
airportDictionary["VNO"] = 14.2

//we can change the value this way too
airportDictionary.updateValue(35, forKey: "SVO") //this method returns the old value and updates the new value
// or it will create a new value if the key did not exist
airportDictionary.updateValue(62, forKey: "MIL") //and will return nil, as the old value, that did not exist before

//alternative way to add a value:
airportDictionary["BRU"] = 88 //this returns a new value, not a nil as in the above method
airportDictionary

//we can delete value with two ways:
airportDictionary["BRU"] = nil //this will return nil
airportDictionary.removeValue(forKey: "MIL") //this will return the old value (that does not exist anymore)
airportDictionary
//: ### What happens if we call a key that does not exist:
var myFavoriteAirport = airportDictionary["BRU"] //it just returns nil instead of crashing the app, it means that it returns an optional
myFavoriteAirport = airportDictionary["DME"]
print(myFavoriteAirport) //so need to force unwrap it first
//: ### Declaring a Dictionary:
let myNewDictionary: Dictionary<Int,String> //or
let otherDictionary: [Double:Int]
//: ### Initializing a Dictionary:
var emptyDictionary:[String:Int] = [:]
var otherEmptyDictionary: Dictionary<Int,String> = [:]
//this can be used to remove all values from disctionary:
engEmojiDictionary = [:]
/*:
 ---
 - Callout(Page 156): Basic properties and methods of Dictionaries
 */
//: * Count
airportDictionary.count
engEmojiDictionary.count
//: * isEmpty
airportDictionary.isEmpty
engEmojiDictionary.isEmpty
//: * Returning all keys, or all values:
airportDictionary.keys //returns some LazyMapCollection, not an array
airportDictionary.values
print(airportDictionary.keys)
print()
/*:
 ---
 - Callout(Page 157): #HW
 */
//creating an alias for a chess figure with name and it's option position on the board
typealias Chessman = Dictionary<String,(alpha:Character,num:Int)?>

//creating a dictionary with 3 figures, one of which is taken/killed:
var chessmen: Chessman = ["King":(alpha:"E",num:1),"Queen":(alpha:"D",num:1),"Bishop":nil]

//creating a function that checks whether figure is on the board or taken
func check(_ figure: String) {
    if chessmen[figure]! == nil {
        print("\(figure) was killed.")
    } else {
        print("\(figure) is positioned at \(chessmen[figure]!!.alpha)\(chessmen[figure]!!.num)")
    }
}

//checking all figures in the dictionary
check("King")
check("Queen")
check("Bishop")

//4. для получения координат переданной фигуры используйте опциональное связавание? NOT DONE
//: [Previous](@previous)  |  [Next Page](@next)
