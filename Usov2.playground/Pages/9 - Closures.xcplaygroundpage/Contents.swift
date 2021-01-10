//: [Previous](@previous)  | Page 9 - Closures | [Next Page](@next)
/*:
 ---
 - Callout(Page 116): Closures
 */
//: **Let's write a function that will handle certain bills in a wallet**
func handle100(in wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for bill in wallet {
        if bill == 100 {
            returnWallet.append(bill)
        }
    }
    return returnWallet
}

var wallet = [10, 50, 100, 100, 5000, 100, 50, 50, 500, 100]
handle100(in: wallet)
//: **Let's write another function that will handle another bills in a wallet**
func handleMoreThan1000(in wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for bill in wallet {
        if bill >= 1000 {
            returnWallet.append(bill)
        }
    }
    return returnWallet
}

handleMoreThan1000(in: wallet)
//: **Both functions have repetitive code, which is not very good, so we can improve the function:**
//first, we will write a single function that will create a result array
func handle(in wallet: [Int], closure: (Int) -> Bool) -> [Int] {
    var returnWallet = [Int]()
    for bill in wallet {
        if closure(bill) {
            returnWallet.append(bill)
        }
    }
    return returnWallet
}

//function that handles 100
func compare100(bill: Int) -> Bool {
    return bill == 100
}

//function that handles 1000 and above
func compareMoreThan1000(bill: Int) -> Bool {
    return bill >= 1000
}

handle(in: wallet, closure: compare100)
handle(in: wallet, closure: compareMoreThan1000)
//: ### Page 192 - Closure expressions
/*:
 - Important: Instead of writing a separate closure function, we can pass the code directly inside our main function
 */
handle(in: wallet, closure: {(bill: Int) -> Bool in
    return bill >= 1000
} )

handle(in: wallet, closure: {(bill: Int) -> Bool in
    return bill == 100
})
/*:
 - Note: When we created handle function, we already specified functional type of a closure (Int) -> Bool, so we don't need to repeat it in our closure expression while calling this function, so we can simplify it further
 */
handle(in: wallet, closure: {bill in
    return bill >= 1000
})

handle(in: wallet, closure: {bill in
    return bill == 100
})
/*:
 - Note: When function expression has only 1 expression returning a value (using return command), return command can be skipped
 */
handle(in: wallet,
       closure: {bill in bill >= 1000})
handle(in: wallet,
       closure: {bill in bill == 100})
/*:
 - Note: We can further improve the code. For function expression of a single line of code, we can use shortened names like $parameter_number. They start from 0, for example we will write $0, $1, $2, etc.
 */
handle(in: wallet, closure: {$0 >= 1000})
handle(in: wallet, closure: {$0 == 100})
/*:
 - Note: When input parameter-function is the last parameter of a function, like in our example above, we can put it outside parenthesis
 */
handle(in: wallet)
    {$0 >= 1000}
handle(in: wallet)
    {$0 == 100}
/*:
 - Experiment: Let's create an array containing only valid bills and then sample only valid bills from a wallet
 */
let validBills = [100, 500]
handle(in: wallet)
    {bill in
    for number in validBills {
        if number == bill {
            return true
        }
    }
    return false
}
//: [Previous](@previous)  |  [Next Page](@next)
