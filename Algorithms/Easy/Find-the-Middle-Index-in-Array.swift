//
//  Find-the-Middle-Index-in-Array.swift
//  
//
//  Created by Vyacheslav Pronin on 13.10.2022.
//

import Foundation

class Solution {
    func findMiddleIndex(_ nums: [Int]) -> Int {
        let nums = makePrefixSum(nums)
        var index = 1
        let max = nums[nums.count - 1]
        
        while index < nums.count {
            if nums[index - 1] == max - nums[index] {
                return index - 1
            }
            index += 1
        }
        return -1
    }
    
    func makePrefixSum(_ array: [Int]) -> [Int] {
        guard !array.isEmpty else { return [] }
        var result = [0]
        
        for index in 1...array.count {
            result.append(result[index - 1] + array[index - 1])
        }
        return result
    }
}
