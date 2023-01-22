//
//  Flip-String to-Monotone-Increasing.swift
//  
//
//  Created by Vyacheslav Pronin on 17.01.2023.
//

import Foundation

class Solution {
    func minFlipsMonoIncr(_ s: String) -> Int {
        var result = 0
        var countOne = 0
        
        for char in s {
            if char == "0" {
                result = min(countOne, result + 1)
            } else {
                countOne += 1
            }
        }
        
        return result
    }
}
