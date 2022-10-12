//
//  Range-Sum-Query-Immutable.swift
//  
//
//  Created by Vyacheslav Pronin on 12.10.2022.
//

import Foundation

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */

class NumArray {
    
    private var nums: [Int] = []
    
    init(_ nums: [Int]) {
        self.nums = makePrefixSum(nums)
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        guard left < nums.count && right < nums.count else { return 0 }
        return nums[right + 1] - nums[left]
    }
    
    private func makePrefixSum(_ array: [Int]) -> [Int] {
        guard !array.isEmpty else { return [] }
        var result = [0]
        
        for index in 1...array.count {
            result.append(result[index - 1] + array[index - 1])
        }
        
        return result
    }
}
