//
//  Move-Zeroes.swift
//  
//
//  Created by Vyacheslav Pronin on 10.10.2022.
//

import Foundation

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        guard !nums.isEmpty else { return }
        var index = 0
        var maxIndex = nums.count - 1
        
        while index < maxIndex {
            if nums[index] == 0 {
                nums.append(nums.remove(at: index))
                maxIndex -= 1
            } else {
                index += 1
            }
        }
    }
}
