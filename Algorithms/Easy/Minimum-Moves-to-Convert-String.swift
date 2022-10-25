//
//  Minimum-Moves-to-Convert-String.swift
//  
//
//  Created by Vyacheslav Pronin on 25.10.2022.
//

import Foundation

class Solution {
    func minimumMoves(_ s: String) -> Int {
        var str = Array(s)
        var result = 0
        var index = 0
        
        while index < str.count {
            if str[index] == "X" {
                result += 1
                index += 2
            }
            index += 1
        }
        
        return result
    }
}
