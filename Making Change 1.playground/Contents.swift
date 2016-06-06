//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func makeChange(change: Double) -> String {
    
    let centsChange = Int(change * 100)
    let dollars = centsChange / 100
    let quarters = (centsChange - dollars * 100) / 25
    let dimes = (centsChange - dollars * 100 - quarters * 25) / 10
    let nickels = (centsChange - dollars * 100 - quarters * 25 - dimes * 10) / 5
    let pennies = (centsChange % 5)
    
    return "Your change is \(dollars) dollars, \(quarters) quarters, \(dimes) dimes, \(nickels) nickels, and \(pennies) pennies."
    
}

print(makeChange(15.67))
