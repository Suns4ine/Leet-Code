//
//  Intersection-of-Two-Arrays.swift
//  
//
//  Created by Vyacheslav Pronin on 08.10.2022.
//

import Foundation

class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let nums2 = nums2.sorted()
        var resultSet = Set<Int>()
        
        for numb in nums1 {
            if !resultSet.contains(numb),
               isFind(nums2, numb) {
                resultSet.insert(numb)
            }
        }
        
        //  Another solution
        //  return Array(Set(nums1).intersection(Set(nums2)))
        return Array(resultSet)
    }

    func isFind(_ nums: [Int], _ numb: Int) -> Bool {
        guard !nums.isEmpty else { return false }
        var left = 0
        var right = nums.count - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if nums[index] >= numb {
                right = index
            } else {
                left = index + 1
            }
        }
        
        return nums[left] == numb
    }
}
