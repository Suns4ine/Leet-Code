//
//  Find-Minimum-in-Rotated-Sorted-Array.swift
//  
//
//  Created by Vyacheslav Pronin on 12.11.2022.
//

import Foundation

class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if nums[index] < nums[right] {
                right = index
            } else {
                left = index + 1
            }
        }
        return nums[left]
    }
}
