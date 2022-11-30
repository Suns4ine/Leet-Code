//
//  Strobogrammatic-Number.swift
//  
//
//  Created by Vyacheslav Pronin on 30.11.2022.
//

import Foundation

class Solution {
    func isStrobogrammatic(_ num: String) -> Bool {
        let num = Array(num)
        let dict: [Character: Character] = [
            "6": "9",
            "9": "6",
            "8": "8",
            "1": "1",
            "0": "0"
        ]
        var left = 0
        var right = num.count - 1
        
        while left <= right {
            if num[left] != dict[num[right]] {
                return false
            }
            left += 1
            right -= 1
        }
        return true
    }
}
