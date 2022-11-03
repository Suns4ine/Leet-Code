//
//  Intersection-of-Multiple-Arrays.swift
//  
//
//  Created by Vyacheslav Pronin on 02.11.2022.
//

import Foundation

class Solution {
    func intersection(_ nums: [[Int]]) -> [Int] {
        var result = Set(nums[0])
        
        for elem in nums {
            result = result.intersection(elem)
        }
        
        return Array(result).sorted()
    }
}
