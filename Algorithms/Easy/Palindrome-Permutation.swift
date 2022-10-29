//
//  Palindrome-Permutation.swift
//  
//
//  Created by Vyacheslav Pronin on 29.10.2022.
//

import Foundation

class Solution {
    func canPermutePalindrome(_ s: String) -> Bool {
        guard !s.isEmpty else { return false }
        var dict: [Character: Int] = [:]
        var isMore = false
        
        for char in s {
            dict[char, default: 0] += 1
        }
        
        for key in dict.keys {
            if dict[key]! % 2 != 0 {
                guard !isMore else { return false }
                isMore = true
            }
        }
        
        return true
    }
}
