//
//  Check-If-a-Number-Is-Majority-Element-in-a-Sorted-Array.swift
//  
//
//  Created by Vyacheslav Pronin on 15.10.2022.
//

import Foundation

class Solution {
    func isMajorityElement(_ nums: [Int], _ target: Int) -> Bool {
        guard !nums.isEmpty else { return false }
        return (isLastIndex(nums, numb: target) - isFirstIndex(nums, numb: target)) >= ((nums.count/2) + 1)
    }
    
    func isFirstIndex(_ array: [Int], numb: Int) -> Int {
        guard !array.isEmpty else { return -1 }
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
        
        return right >= 0 && array[right] == numb ? left : -1
    }
}
