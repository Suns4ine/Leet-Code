//
//  Jewels-and-Stones.swift
//  
//
//  Created by Vyacheslav Pronin on 22.10.2022.
//

import Foundation

class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var dict: [Character: Int] = [:]
        
        for char in stones {
            dict[char, default: 0] += 1
        }

        return jewels.reduce(0) { res, char in
            return res + dict[Character(extendedGraphemeClusterLiteral: char), default: 0]
        }
    }
    
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var dict: [Character: Int] = [:]
        var result = 0
        
        for (_, char) in stones.enumerated() {
            dict[char, default: 0] += 1
        }
        
        for (_, char) in jewels.enumerated() {
            result += dict[char, default: 0]
        }
        
        return result
    }
}
