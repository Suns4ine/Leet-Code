//
//  Maximum-Distance-Between-a-Pair-of-Values.swift
//  
//
//  Created by Vyacheslav Pronin on 12.11.2022.
//

import Foundation

class Solution {
    func maxDistance(_ nums1: [Int], _ nums2: [Int]) -> Int {
        var result = 0
        var leftIndex = 0
        var rightIndex = 0
        
        while leftIndex < nums1.count && rightIndex < nums2.count {
            if nums1[leftIndex] > nums2[rightIndex] {
                leftIndex += 1
            } else {
                result = max(result, rightIndex - leftIndex)
                rightIndex += 1
            }
        }
        
        return result
    }
}
