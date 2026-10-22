Check Palindrome Number

Write a Swift program to check whether a given number is a palindrome or not. A palindrome number remains the same when its digits are reversed.

INPUT:

Enter a number:
121

OUTPUT:

121 is a Palindrome Number

PROGRAM:

import Foundation

print("Enter a number:")
let n = Int(readLine()!)!

var num = n
var reverse = 0

while num > 0 {
    let digit = num % 10
    reverse = reverse * 10 + digit
    num = num / 10
}

if n >= 0 && n == reverse {
    print("\(n) is a Palindrome Number")
} else {
    print("\(n) is Not a Palindrome Number")
}







