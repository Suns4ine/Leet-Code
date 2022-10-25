//
//  Minimum-Operations-to-Make-the-Array-Increasing.swift
//  
//
//  Created by Vyacheslav Pronin on 25.10.2022.
//

import Foundation

class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0 }
        var result = 0
        var max = nums.first!
        
        for index in 1..<nums.count {
            if max < nums[index] {
                max = nums[index]
            } else {
                max += 1
                result += max - nums[index]
            }
        }
        
        return result
    }
}
