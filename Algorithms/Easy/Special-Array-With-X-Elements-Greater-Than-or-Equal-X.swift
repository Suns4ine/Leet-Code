//
//  Special-Array-With-X-Elements-Greater-Than-or-Equal-X.swift
//  
//
//  Created by Vyacheslav Pronin on 12.11.2022.
//

import Foundation

class Solution {
    func specialArray(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var nums = nums.sorted()
        var count = nums.count
        var max = 0
        
        for i in 0..<count {
            let diff = count - i
            if diff > max && diff <= nums[i] {
                return diff
            }
            max = nums[i]
        }
        return -1
    }
}
