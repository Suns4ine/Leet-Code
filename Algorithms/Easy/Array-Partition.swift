//
//  Array-Partition.swift
//  
//
//  Created by Vyacheslav Pronin on 25.10.2022.
//

import Foundation

class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0 }
        var nums = nums.sorted()
        var result = 0
        
        for index in 0..<nums.count where index % 2 != 0 {
            result += min(nums[index - 1], nums[index])
        }
        
        return result
    }
}
