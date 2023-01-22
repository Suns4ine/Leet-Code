//
//  Subarray-Sums-Divisible-by-K.swift
//  
//
//  Created by Vyacheslav Pronin on 22.01.2023.
//

import Foundation

class Solution {
    func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
        var prefixMod = 0
        var result = 0
        
        var modGroups = Array(repeating: 0, count: k)
        modGroups[0] = 1
        
        for num in nums {
            prefixMod = (prefixMod + num % k + k) % k
            
            result += modGroups[prefixMod]
            modGroups[prefixMod] += 1
        }
        
        return result
    }
}
