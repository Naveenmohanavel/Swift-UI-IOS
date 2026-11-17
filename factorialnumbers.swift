1. Question
Write a Swift program to find the factorial of a given number using a for loop.

The factorial of a number is the product of all positive integers from 1 to that number.

INPUT:

Enter a number:
5

OUTPUT:

Factorial of 5 is 120

SWIFT PROGRAM:


import Foundation

print("Enter a number:")
let n = Int(readLine()!)!

var fact = 1

if n < 0 {
    print("Factorial is not defined for negative numbers")
} else {
    for i in 1...max(n, 1) {
        fact = fact * i
    }

    print("Factorial of \(n) is \(fact)")
}
