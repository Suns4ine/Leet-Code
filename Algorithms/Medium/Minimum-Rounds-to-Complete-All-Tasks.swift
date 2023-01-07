//
//  Minimum-Rounds-to-Complete-All-Tasks.swift
//  
//
//  Created by Vyacheslav Pronin on 06.01.2023.
//

import Foundation

class Solution {
    func minimumRounds(_ tasks: [Int]) -> Int {
        var dict: [Int: Int] = [:]
        var result = 0
        for numb in tasks {
            dict[numb, default: 0] += 1
        }
        
        for value in dict.values {
            if value > 1 {
                result += value / 3
                result += value % 3 == 0 ? 0 : 1
            } else {
                return -1
            }
        }
        
        return result
    }
}
