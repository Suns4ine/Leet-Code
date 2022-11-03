//
//  Longest-Palindrome-by-Concatenating-Two-Letter-Words.swift
//  
//
//  Created by Vyacheslav Pronin on 03.11.2022.
//

import Foundation

class Solution {
    func longestPalindrome(_ words: [String]) -> Int {
        var dict: [String : Int] = [:]
        var result = 0
        var longPalindrome = 0
        
        for word in words {
            dict[word, default: 0] += 1
        }
        
        for key in dict.keys {
            var value = dict[key, default: 0]
            
            if !isPalindromeStr(key),
               let valueRef = dict[String(key.reversed())] {
                result += (min(valueRef, value) * 2 * key.count)
                
            } else if isPalindromeStr(key) {
                result += (value - value % 2) * key.count
                value -= (value - value % 2)
                longPalindrome = value == 1 && key.count > longPalindrome ? key.count : longPalindrome
            }
            dict[String(key.reversed())] = nil
            dict[key] = nil
        }
        
        return result + longPalindrome
    }
    
    func isPalindromeStr(_ str: String) -> Bool {
        guard !str.isEmpty else { return false }
        var max = str.count - 1
        var arr = Array(str)
        
        for index in 0..<arr.count {
            if index >= max { return true }
            if arr[index] != arr[max] { return false }
            
            max -= 1
        }
        
        return true
    }
}
