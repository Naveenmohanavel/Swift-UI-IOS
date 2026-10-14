Find the second-largest distinct number in an array of integers.

Input:

Enter the array size:
5
Enter the array elements:
10 25 8 40 30

Output:

Second largest number: 30

Swift Program:

import Foundation
print("Enter the array size:")
let n = Int(readLine()!)!
print("Enter the array elements:")
let input = readLine()!
let arr = input.split(separator: " ").map { Int($0)! }
var largest = Int.min
var second = Int.min
for num in arr {
    if num > largest {
        second = largest
        largest = num
    } else if num > second && num < largest {
        second = num
    }
}
if second == Int.min {
    print("Second largest number does not exist")
} else {
    print("Second largest number: \(second)")
}


