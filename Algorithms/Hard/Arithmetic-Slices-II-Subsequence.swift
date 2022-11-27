//
//  Arithmetic-Slices-II-Subsequence.swift
//  
//
//  Created by Vyacheslav Pronin on 27.11.2022.
//

import Foundation

class Solution {
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        var total = 0
        let n = nums.count
        var dp = Array(repeating: [Int: Int](), count: n)
        for i in 1..<n {
            for j in 0..<i {
                let diff = nums[j] - nums[i]
                dp[i][diff, default: 0] += dp[j][diff, default: 0] + 1
                total += dp[j][diff, default: 0]
            }
        }
        return total
    }
}
