//
//  Search-Insert-Position.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2021.
//

import Foundation

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        var left = 0
        var right = nums.count - 1

        while left < right {
            let index = (left + right) / 2

            if nums[index] >= target {
                right = index
            } else {
                left = index + 1
            }
        }

        return nums[left] < target && left == nums.count - 1 ? left + 1 : left
    }
}
