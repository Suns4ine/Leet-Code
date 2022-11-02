//
//  Number-of-1-Bits.swift
//  
//
//  Created by Vyacheslav Pronin on 02.11.2022.
//

import Foundation

class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var result = 0
        
        for char in String(n, radix: 2) {
            result = char == "1" ? result + 1 : result
        }
        
        return result
    }
}
