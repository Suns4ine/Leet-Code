//
//  Two-Sum-Less-Than-K.swift
//  
//
//  Created by Vyacheslav Pronin on 19.10.2022.
//

import Foundation

class Solution {
    func twoSumLessThanK(_ nums: [Int], _ k: Int) -> Int {
        guard nums.count > 1 else { return -1 }
        var result = -1
        let nums = nums.sorted()
        var maxIndex = getMaxIndex(nums, numb: k)
        var curr = 0
        
        while maxIndex > 0 {
            curr = nums[maxIndex]
            let numb = nums[getCurrentIndex(nums, numb: curr, k: k, maxIndex: maxIndex - 1)]
            result = curr + numb < k && curr + numb > result ? numb + curr : result
            maxIndex -= 1
        }
        
        return result
    }
    
    func getCurrentIndex(_ array: [Int], numb: Int, k: Int, maxIndex: Int) -> Int {
        guard !array.isEmpty else { return 0 }
        var left = 0
        var right = maxIndex
        
        while left <= right {
            let index = (left + right) / 2
            if array[index] + numb >= k {
                right = index - 1
            } else {
                left = index + 1
            }
        }
        
        return right > 0 ? right : 0
    }
    
    func getMaxIndex(_ array: [Int], numb: Int) -> Int {
        guard !array.isEmpty else { return 0 }
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
        
        return left
    }
}
