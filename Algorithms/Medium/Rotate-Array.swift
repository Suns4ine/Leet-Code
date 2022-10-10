//
//  Rotate-Array.swift
//  
//
//  Created by Vyacheslav Pronin on 10.10.2022.
//

import Foundation

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard nums.count != k,
              k > 0
        else { return }
        var k = nums.count < k ? (k % nums.count) : k
        var arr = [Int]()
        
        while k != 0 {
            arr.append(nums.remove(at: nums.count - k))
            k -= 1
        }
        
        nums = arr + nums
    }
}
