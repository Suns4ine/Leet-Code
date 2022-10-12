//
//  Contains-Duplicate-II.swift
//  
//
//  Created by Vyacheslav Pronin on 12.10.2022.
//

import Foundation

class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        guard !nums.isEmpty else { return false }
        var dict: [Int: Int] = [:]
        
        for (index, value) in nums.enumerated() {
            if let elem = dict[value],
               abs(index - elem) <= k {
                return true
            }
            dict[value] = index
        }
        
        return false
    }
}
