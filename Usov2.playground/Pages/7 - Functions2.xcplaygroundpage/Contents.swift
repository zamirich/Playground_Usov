//: [Previous](@previous)  | Page 7 - Functions (continued) | [Next Page](@next)
import Foundation
//: ### Page 179 - default values for arguments
//let's improve sumWallet funciton to deal with situation, where there is no wallet
func sumWalletImproved(_ wallet: [Int]? = nil) -> Int? {
    var sum = 0
    if wallet == nil {
        return nil
    }
    for bill in wallet! {
        sum += bill
    }
    return sum
}
var wallet = [50, 100, 50, 5000, 500, 100]
//let's call the funciton again with two options:
sumWalletImproved(wallet)
sumWalletImproved()
//: ### Page 181 - functional type
/*:
 - Note: Any function has its functional type. It shows as type of input parameters -> type of return values, for example for the function above it is:
 ([Int]?) -> (Int?)
 */
//: ### Page 181 - functional as argument
/*:
 - Experiment: Previously we used a value returned by a function as an argument for another function. Let's now use not the value returned by a function, but the function itself as an argument
 */
//let's write a function that will generate bills in our wallet
func generateWallet(walletLength: Int) -> [Int] {
    let typesOfBills = [50, 100, 500, 1000, 5000]
    var wallet: [Int] = []
    for _ in 1...walletLength {
        let randomIndex = Int(arc4random_uniform(UInt32(typesOfBills.count - 1)))
        wallet.append(typesOfBills[randomIndex])
    }
    return wallet
}
//function that counts money
func sumWalletFurtherImproved(billsFunction wallet: (Int) -> ([Int])) -> Int? {
    let myWalletArray = wallet(Int(arc4random_uniform(10)))
    var sum: Int = 0
    for bill in myWalletArray {
        sum += bill
    }
    return sum
}
//passing function as a parameter for other function
sumWalletFurtherImproved(billsFunction: generateWallet) //this funciton executes well, but then all of a sudden brings an error. to get rid of it, just need to type this row again

//last page is 183
//: [Previous](@previous)  |  [Next Page](@next)
