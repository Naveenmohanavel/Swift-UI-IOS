Sum of the digits:

Write a Swift program to find the sum of all digits in a given number using a while loop.

Example: If the number is 1234, the sum is 1 + 2 + 3 + 4 = 10.

INPUT:

Enter a number:
1234

OUTPUT:

Sum of digits: 10

PROGRAM:


import Foundation

print("Enter a number:")
let n = Int(readLine()!)!

var num = abs(n)
var sum = 0

while num > 0 {
    let digit = num % 10
    sum = sum + digit
    num = num / 10
}

print("Sum of digits: \(sum)")
