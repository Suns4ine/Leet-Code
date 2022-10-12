//
//  Largest-Perimeter-Triangle.swift
//  
//
//  Created by Vyacheslav Pronin on 12.10.2022.
//

import Foundation

class Solution {
    func largestPerimeter(_ nums: [Int]) -> Int {
        let nums = nums.sorted(by: >)
        
        for index in 0..<nums.count - 2 {
            if nums[index + 2] + nums[index + 1] - nums[index] > 0 {
                return nums[index + 2] + nums[index + 1] + nums[index]
            }
        }
        
        return 0
    }
}
