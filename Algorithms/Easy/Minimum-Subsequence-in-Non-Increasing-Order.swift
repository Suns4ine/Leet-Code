//
//  Minimum-Subsequence-in-Non-Increasing-Order.swift
//  
//
//  Created by Vyacheslav Pronin on 25.10.2022.
//

import Foundation

class Solution {
    func minSubsequence(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }
        var nums = nums.sorted(by: >)
        var sum = nums.reduce(0, +)
        var result = [nums.removeFirst()]
        
        for elem in nums {
            if sum - result.reduce(0, +) >= result.reduce(0, +) {
                result.append(elem)
                nums.removeFirst()
                continue
            }
            break
        }
        
        return result
    }
}
