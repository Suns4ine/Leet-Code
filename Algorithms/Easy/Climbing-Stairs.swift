//
//  Climbing-Stairs.swift
//  
//
//  Created by Vyacheslav Pronin on 11.10.2022.
//

import Foundation

class Solution {
    func climbStairs(_ n: Int) -> Int {
        return n <= 3 ? n : fibonacci(n)
    }
    
    func fibonacci(_ numb: Int) -> Int {
        guard numb > 1 else { return 1 }
        var left = 1
        var right = 1
        
        (2...numb).forEach { _ in
            (left, right) = (left + right, left)
        }
        return left
    }
}
