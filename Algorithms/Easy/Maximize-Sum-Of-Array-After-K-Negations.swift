//
//  Maximize-Sum-Of-Array-After-K-Negations.swift
//  
//
//  Created by Vyacheslav Pronin on 25.10.2022.
//

import Foundation

class Solution {
    func largestSumAfterKNegations(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums.sorted()
        var min = (index: nums.count - 1, numb: nums[nums.count - 1])
        var k = k
        
        for index in 0..<nums.count {
            guard k != 0 else { break }
            
            if nums[index] < 0 {
                nums[index] = -nums[index]
                k -= 1
            }
            min = min.numb > nums[index] ? (index: index, numb: nums[index]) : min
        }
                
        nums[min.index] = k % 2 == 0 ? nums[min.index] : -nums[min.index]
        return nums.reduce(0, +)
    }
}
