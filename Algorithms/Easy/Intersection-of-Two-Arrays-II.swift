//
//  Intersection-of-Two-Arrays-II.swift
//  
//
//  Created by Vyacheslav Pronin on 08.10.2022.
//

import Foundation

class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var nums2 = nums2.sorted()
        var resultArr = [Int]()
        
        for numb in nums1 {
            let index = isFind(nums2, numb)
            if index >= 0 {
                resultArr.append(numb)
                nums2.remove(at: index)
            }
        }
        
        return resultArr
    }
    
    func isFind(_ nums: [Int], _ numb: Int) -> Int {
        guard !nums.isEmpty else { return -1 }
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
        
        return nums[left] == numb ? left : -1
    }
}
