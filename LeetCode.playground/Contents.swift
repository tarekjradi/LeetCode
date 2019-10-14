import UIKit

var str = "Hello, playground"

/*
 
Given a matrix A, return the transpose of A.
The transpose of a matrix is the matrix flipped over it's main diagonal, switching the row and column indices of the matrix.
Example 1:
Input: [[1,2,3],[4,5,6],[7,8,9]]
Output: [[1,4,7],[2,5,8],[3,6,9]]
Example 2:
Input: [[1,2,3],[4,5,6]]
Output: [[1,4],[2,5],[3,6]]
*/

func transpose<T>(_ input: [[T]]) -> [[T?]] {
    let columns = input.count
    let rows = input.reduce(0) { max($0, $1.count) }

    var result: [[T?]] = []

    for row in 0 ..< rows {
        result.append([])
        for col in 0 ..< columns {
            if row < input[col].count {
                result[row].append(input[col][row])
            } else {
                result[row].append(nil)
            }
        }
    }

    return result
}
var myTrasposeArray = transpose([[1,2,3],[4,5,6],[7,8,9]])


/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 Example:

 Given nums = [2, 7, 11, 15], target = 9,

 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for col1 in 0 ..< nums.count {
        for col2 in 1 ..< nums.count {
            if col1 == col2 { continue }
            if nums[col1]+nums[col2] == target {
                return [col1, col2]
            }
        }
    }
    return []
}

twoSum([2, 5, 5, 11], 10)


/*
 Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.

 Example 1:

 Input: 121
 Output: true
 Example 2:

 Input: -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 Example 3:

 Input: 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
*/

func isPalindrome(_ x: Int) -> Bool {
    let input = String.init(x)
    let stringLength = input.count
    var position = 0
    while position < stringLength / 2 {
        let startIndex = input.index(input.startIndex, offsetBy: position)
        let endIndex = input.index(input.endIndex, offsetBy: -position - 1)
        
        if input[startIndex] == input[endIndex] {
            position += 1
        } else {
            return false
        }
    }
    return true
}

isPalindrome(121)