//
//  Sign-of-the-Product-of-an-Array.swift
//  
//
//  Created by Vyacheslav Pronin on 04.11.2022.
//

import Foundation

class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        var countMinus = 0
        
        for num in nums {
            guard num != 0 else { return 0 }
            countMinus = num < 0 ? countMinus + 1 : countMinus
        }
        
        return countMinus % 2 == 0 ? 1 : -1
    }
}
