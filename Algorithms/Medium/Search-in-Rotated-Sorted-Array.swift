//
//  Search-in-Rotated-Sorted-Array.swift
//  
//
//  Created by Vyacheslav Pronin on 12.11.2022.
//

import Foundation

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let index = (left + right) / 2
            if nums[index] == target { return index }
            else if nums[index] >= nums[left] {
                if target >= nums[left] && target < nums[index] {
                    right = index - 1
                } else {
                    left = index + 1
                }
            } else {
                if target <= nums[right] && target > nums[index] {
                    left = index + 1
                } else {
                    right = index - 1
                }
            }
        }
        return -1
    }
}
