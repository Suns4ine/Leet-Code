//
//  Find-First-and-Last-Position-of-Element-in-Sorted-Array.swift
//  
//
//  Created by Vyacheslav Pronin on 12.11.2022.
//

import Foundation

class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        return [getLeftIndex(nums, numb: target), getRightIndex(nums, numb: target)]
    }
    
    func getLeftIndex(_ arr: [Int], numb: Int) -> Int {
        guard !arr.isEmpty else { return -1 }
        var left = 0
        var right = arr.count - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if arr[index] >= numb {
                right = index
            } else {
                left = index + 1
            }
        }
        return arr[left] != numb ? -1 : left
    }
    
    func getRightIndex(_ arr: [Int], numb: Int) -> Int {
        guard !arr.isEmpty else { return -1 }
        var left = 0
        var right = arr.count - 1
        
        while left <= right {
            let index = (left + right) / 2
            
            if arr[index] > numb {
                right = index - 1
            } else {
                left = index + 1
            }
        }
        return right != -1 && arr[right] != numb ? -1 : right
    }
}
