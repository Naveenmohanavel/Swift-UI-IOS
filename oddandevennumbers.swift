Write a Swift program to count how many even and odd numbers are present in a given array using a for loop.

INPUT:

Enter the array size:
6
Enter the array elements:
10 15 20 25 30 35

OUTPUT:

Even numbers count: 3
Odd numbers count: 3

PROGRAM:


import Foundation

print("Enter the array size:")
let n = Int(readLine()!)!

print("Enter the array elements:")
let arr = readLine()!.split(separator: " ").map { Int($0)! }

var even = 0
var odd = 0

for i in 0..<n {
    if arr[i] % 2 == 0 {
        even = even + 1
    } else {
        odd = odd + 1
    }
}

print("Even numbers count: \(even)")
print("Odd numbers count: \(odd)")
