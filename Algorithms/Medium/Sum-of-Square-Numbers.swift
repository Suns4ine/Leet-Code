//
//  Sum-of-Square-Numbers.swift
//  
//
//  Created by Vyacheslav Pronin on 12.11.2022.
//

import Foundation

class Solution {
    func judgeSquareSum(_ c: Int) -> Bool {
        guard c != 0 else { return true }
        var right = 0
        var left = 0
        
        
        while (left * left) <= c {
            right = c - (left * left)
            left += 1
            guard !isNumberSquared(sum: 0, left: right, right: right) else { return true }
        }
        
        return false
    }
    
    func isNumberSquared(sum: Int, left: Int, right: Int) -> Bool {
        if sum > left { return false }
        let mid = sum + (left - sum) / 2
        if mid * mid == right {
            return true
        } else if mid * mid > right {
            return isNumberSquared(sum: sum, left: mid - 1, right: right)
        }
        return isNumberSquared(sum: mid + 1, left: left, right: right)
    }
}
