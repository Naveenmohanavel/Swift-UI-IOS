Fibonacci Series

Write a Swift program to print the Fibonacci series up to a given number of terms.

In the Fibonacci series, each number is the sum of the previous two numbers.

Example: 0, 1, 1, 2, 3, 5, 8, 13...

INPUT:

Enter the number of terms:
7

OUTPUT:

Fibonacci Series:
0 1 1 2 3 5 8

SWIFT PROGRAM:


import Foundation

print("Enter the number of terms:")
let n = Int(readLine()!)!

var a = 0
var b = 1

if n <= 0 {
    print("Enter a positive number")
} else {
    print("Fibonacci Series:")

    for _ in 1...n {
        print(a, terminator: " ")

        let c = a + b
        a = b
        b = c
    }
}




