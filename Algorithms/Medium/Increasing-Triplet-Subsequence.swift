//
//  Increasing-Triplet-Subsequence.swift
//  
//
//  Created by Vyacheslav Pronin on 11.10.2022.
//

import Foundation

class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        guard nums.count > 2 else { return false }
        var i: Int? = nil
        var j: Int? = nil
        
        for elem in nums {
            if i == nil {
                i = elem
            } else if i! >= elem {
                i = elem
            } else if j == nil {
                j = elem
            } else if j! >= elem {
                j = elem
            } else {
                return true
            }
        }
        
        return false
    }
}
