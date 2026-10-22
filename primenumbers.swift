Checking the prime number

Write a Swift program to check whether a given number is a prime number or not.

INPUT:

Enter a number:
7

OUTPUT:

7 is a Prime Number

Program:


import Foundation

print("Enter a number:")
let n = Int(readLine()!)!

var prime = true

if n <= 1 {
    prime = false
} else {
    for i in 2..<n {
        if n % i == 0 {
            prime = false
            break
        }
    }
}

if prime {
    print("\(n) is a Prime Number")
} else {
    print("\(n) is Not a Prime Number")
}




