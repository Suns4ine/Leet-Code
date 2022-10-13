//
//  Running-Sum-of-1d-Array.swift
//  
//
//  Created by Vyacheslav Pronin on 13.10.2022.
//

import Foundation

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        guard !nums.isEmpty else { return [] }
        var result = [0]
        
        for index in 1...nums.count {
            result.append(nums[index - 1] + result[index - 1])
        }
        
        result.removeFirst()
        return result
    }
}
