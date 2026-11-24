Find the Largest and Smallest Number in an Array

Write a Swift program to find the largest and smallest elements in an array of integers using a for loop.

INPUT:

Enter the array size:
5
Enter the array elements:
25 10 45 5 30

OUTPUT:

Largest number: 45
Smallest number: 5

PROGRAM:


import Foundation

print("Enter the array size:")
let n = Int(readLine()!)!

print("Enter the array elements:")
let arr = readLine()!.split(separator: " ").map { Int($0)! }

var largest = arr[0]
var smallest = arr[0]

for i in 1..<n {
    if arr[i] > largest {
        largest = arr[i]
    }

    if arr[i] < smallest {
        smallest = arr[i]
    }
}

print("Largest number: \(largest)")
print("Smallest number: \(smallest)")
