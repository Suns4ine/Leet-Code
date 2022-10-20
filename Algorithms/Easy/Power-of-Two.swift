//
//  Power-of-Two.swift
//  
//
//  Created by Vyacheslav Pronin on 20.10.2022.
//

import Foundation

class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        var count = 0
        
        for bit in String(n, radix: 2) {
            count = bit == "1" ? count + 1 : count
            guard count < 2 else { return false }
        }
        
        return count == 1
    }
}
