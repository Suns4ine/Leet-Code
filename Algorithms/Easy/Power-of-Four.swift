//
//  Power-of-Four.swift
//  
//
//  Created by Vyacheslav Pronin on 30.10.2022.
//

import Foundation

class Solution {
    func isPowerOfFour(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        var countZero = 0
        var countOne = 0
        
        for bit in String(n, radix: 2) {
            guard countOne < 2 else { return false }
            countOne = bit == "1" ? countOne + 1 : countOne
            countZero = bit == "0" ? countZero + 1 : countZero
        }
        
        return countZero % 2 == 0 && countOne < 2
    }
}
