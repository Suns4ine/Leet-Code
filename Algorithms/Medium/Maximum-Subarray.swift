//
//  Maximum-Subarray.swift
//  
//
//  Created by Vyacheslav Pronin on 09.11.2021.
//

import Foundation

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var numb = nums[0]
        var maxNumb = nums[0]
        for i in 1..<nums.count {
            numb = max(nums[i], numb + nums[i])
            maxNumb = max(maxNumb, numb)
        }
        return maxNumb
    }
}
