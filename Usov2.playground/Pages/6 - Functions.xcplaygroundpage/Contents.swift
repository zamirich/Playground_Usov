//: [Previous](@previous)  | Page 6 - Functions | [Next Page](@next)
/*:
 ---
 - Callout(Page 169): Functions
 */
//: ### Page 175 - Inout
//let's say we have 2 variables
var a = 150, b = 45
//we can write a function that will not only take the input parameter, but will also give it back to be used afterwards
func changeValues(_ a: inout Int, _ b: inout Int) {
    let tmp = a
    a = b
    b = tmp
}
//calling the function to switch the values
changeValues(&a, &b)
//checking that we can use new values returned by the function
a
b
//: ### Page 176 - function as an argument for other function
/*:
 - Note: If a function needs a parameter of certain type, you can use another function as an argument if it returns the same type
 */
func generateString(code: Int, message: String) -> String {
    let returnMessage = "Received a message \(message) with a code of \(code)"
    return returnMessage
}
//the above function returns a String type, so can be used as an argument in print function
print(generateString(code: 404, message: "Page is not found"))
print()
//: ### Page 176 - parameters of unknown number of arguments
func printRequestString(codes: Int...) { //this parameter can contain any unknown number of values of declared type
    var codeString = ""
    for oneCode in codes { //the above is treated like an array, so can be used in for-in loop
        codeString += String(oneCode) + " "
    }
    print("Following answers received - \(codeString)")
}
printRequestString(codes: 600, 800, 301)
printRequestString(codes: 101, 200)
/*:
 - Note: Function can only have 1 parameter of unknown arguments and it should be in the end of all parameters
 */
//: ### Page 177 - tuple as a returned value
func getCodeDescription(code: Int) -> (Int, String) {
    let description: String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknown"
    }
    return (code, description)
}
print(getCodeDescription(code: 150))
/*:
 - Experiment: We can improve the above function by giving names to returned values:
 */
func getCodeDescriptionImproved(code: Int) -> (code: Int, description: String) {
    let description: String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknown"
    }
    return (code, description)
}
let newRequest = getCodeDescriptionImproved(code: 200)
/*:
 - Note: We recorded values returned by the function to the constant newRequest so this constant now have 2 properties - code and description
 */
newRequest.code
newRequest.description
/*:
 - Example: A function that will count the money that we have in our wallet
 */
func sumWallet(_ wallet: [Int]) -> Int {
    var sum = 0
    for bill in wallet {
        sum += bill
    }
    return sum
}
//creating a wallet with different bills
var wallet = [50, 100, 100, 500, 50, 1000, 5000, 50, 100]
//using the function to sum up all money in wallet
sumWallet(wallet)
//adding new notes
wallet.append(1000)
//count money again
sumWallet(wallet)
//: [Previous](@previous)  |  [Next Page](@next)
