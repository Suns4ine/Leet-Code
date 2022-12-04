//
//  Minimum-Average-Difference.swift
//  
//
//  Created by Vyacheslav Pronin on 04.12.2022.
//

import Foundation

class Solution {
    func minimumAverageDifference(_ nums: [Int]) -> Int {
        let n = nums.count
        let totalSum = nums.reduce(0, +)
        
        var res = -1, minDiff = Int.max, leftSum = 0
        for i in 0..<n {
            leftSum += nums[i]
            let rightSum = totalSum - leftSum
            
            let leftAverage = leftSum / (i + 1)
            let rightAverage = i == n - 1 ? 0 : rightSum / (n - i - 1)
            let diff = abs(leftAverage - rightAverage)
            if diff < minDiff {
                minDiff = diff
                res = i
            }
        }
        
        return res
    }
}
