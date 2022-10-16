//
//  Product-of-Array-Except-Self.swift
//  
//
//  Created by Vyacheslav Pronin on 15.10.2022.
//

import Foundation

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 1, count: nums.count)
        var index = nums.count - 1
        var left = [1]
        var right = 1
        
        for index in 1...nums.count {
            left.append(left[index - 1] * nums[index - 1])
        }
        
        while index >= 0 {
            result[index] = left[index] * right
            right *= nums[index]
            index -= 1
        }
        
        return result
    }
}
