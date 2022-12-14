//
//  House-Robber.swift
//  
//
//  Created by Vyacheslav Pronin on 14.12.2022.
//

import Foundation

class Solution {
    func rob(_ nums: [Int]) -> Int {
        if (nums.count == 1)
        {
            return nums[0]
        }
        var now = 0
        var last = 0
        for i in 0..<nums.count {
            var temp = last
            last = now
            now = max(now,nums[i] + temp)
        }
        return now
    }
}
