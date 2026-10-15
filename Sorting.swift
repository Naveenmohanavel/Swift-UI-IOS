Sorting:

Write a Swift program to find a given element in a sorted array using the Binary Search algorithm. If the element is found, print its position; otherwise, print that the element is not found.

Input:

Enter the array size:
5
Enter the sorted array elements:
10 20 30 40 50
Enter the element to search:
30

Output:

Element found at position 3

Program:


import Foundation

print("Enter the array size:")
let n = Int(readLine()!)!

print("Enter the sorted array elements:")
let input = readLine()!
let arr = input.split(separator: " ").map { Int($0)! }

print("Enter the element to search:")
let target = Int(readLine()!)!

var low = 0
var high = n - 1
var found = false

while low <= high {
    let mid = (low + high) / 2

    if arr[mid] == target {
        print("Element found at position \(mid + 1)")
        found = true
        break
    } else if arr[mid] < target {
        low = mid + 1
    } else {
        high = mid - 1
    }
}

if found == false {
    print("Element not found")
}



