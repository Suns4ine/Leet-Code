//
//  Longest-Palindrome.swift
//  
//
//  Created by Vyacheslav Pronin on 25.10.2022.
//

import Foundation

class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var result = 0
        var dict: [Character: Int] = [:]
        var isNotTwo = 0
        
        for char in s {
            dict[char, default: 0] += 1
        }
        
        for key in dict.keys {
            if dict[key]! % 2 == 0 {
                result += dict[key]!
            } else {
                result -= isNotTwo == 0 ? 0 : 1
                isNotTwo = isNotTwo < dict[key]! ? dict[key]! : isNotTwo
                result += isNotTwo < dict[key]! ? isNotTwo : dict[key]!
            }
        }
        
        return result
    }
}
