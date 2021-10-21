//
//  Search-Insert-Position.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2021.
//

import Foundation

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var resIndex = 0
    var low = 0
    var high = nums.count - 1
    
    while low <= high {
        
        let index = (low + high)/2
        
        if nums[index] == target {
            return index
        }
        
        if target > nums[low] {
            resIndex = low + 1
        } else {
            resIndex = low
        }
        
        if nums[index] > target {
            high = index - 1
        } else if nums[index] < target {
            low = index + 1
        }
    }
    
    return resIndex
    }
}
