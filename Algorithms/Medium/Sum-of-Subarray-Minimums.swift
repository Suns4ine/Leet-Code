//
//  Sum-of-Subarray-Minimums.swift
//  
//
//  Created by Vyacheslav Pronin on 25.11.2022.
//

import Foundation

class Solution {
    func sumSubarrayMins(_ arr: [Int]) -> Int {
        var ans = 0
        
        for (idx, num1) in arr.enumerated() {
            var minNum = num1
            ans += num1
            
            for num2 in arr[idx+1..<arr.count] {
                minNum = min(num2,minNum)
                ans += minNum
            }
        }
        
        return ans % 1_000_000_007
    }
}
