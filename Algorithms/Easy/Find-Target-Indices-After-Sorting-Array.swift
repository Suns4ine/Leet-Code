//
//  Find-Target-Indices-After-Sorting-Array.swift
//  
//
//  Created by Vyacheslav Pronin on 10.10.2022.
//

import Foundation

class Solution {
    func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
        let nums = nums.sorted()
        
        let first = isFirstIndex(nums, numb: target)
        let last = isLastIndex(nums, numb: target)
        
        
        switch (first, last) {
        case (let first, let last) where first + last == -2:
            return []
        case (let first, let last) where last - first == 0:
            return [first]
        default:
            return Array(first...last)
        }
    }
    
    func isFirstIndex(_ array: [Int], numb: Int) -> Int {
        guard !array.isEmpty else { return -1 }
        guard array.count > 1 else { return array[0] == numb ? 0 : -1 }
        var left = 0
        var right = array.count - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if array[index] >= numb {
                right = index
            } else {
                left = index + 1
            }
        }
        
        return array[left] == numb ? left : -1
    }
    
    func isLastIndex(_ array: [Int], numb: Int) -> Int {
        guard !array.isEmpty else { return -1 }
        guard array.count > 1 else { return array[0] == numb ? 0 : -1 }
        var left = 0
        var right = array.count - 1
        
        while left <= right {
            let index = (left + right) / 2
            
            if array[index] > numb {
                right = index - 1
            } else {
                left = index + 1
            }
        }
        
        return right == -1 || array[right] != numb ? -1 : right
    }
}
