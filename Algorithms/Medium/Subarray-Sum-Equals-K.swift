//
//  Subarray-Sum-Equals-K.swift
//  
//
//  Created by Vyacheslav Pronin on 15.10.2022.
//

import Foundation

class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        guard nums.count > 1 else { return nums[0] == k ? 1 : 0 }
        var result = 0
        var dict: [Int: Int] = [0: 1]
        var sum = 0
        
        for elem in nums {
            sum += elem
            
            if let val = dict[sum - k] {
                result += val
            }
            
            if dict[sum] == nil {
                dict[sum] = 0
            }
            dict[sum]! += 1
            
        }
        
        return result
    }
}
