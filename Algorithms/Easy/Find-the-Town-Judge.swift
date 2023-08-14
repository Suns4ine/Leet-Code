//
//  Find-the-Town-Judge.swift
//  
//
//  Created by Vyacheslav Pronin on 23.01.2023.
//

import Foundation

class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        guard n > 1 else { return n }
        var dict: [Int: Int] = [:]
        
        for arr in trust {
            dict[arr.last!, default: 0] += 1
            dict[arr.first!, default: 0] -= 1
        }
        
        for key in dict.keys {
            if dict[key] == n - 1 {
                return key
            }
        }
        
        return -1
    }
}
