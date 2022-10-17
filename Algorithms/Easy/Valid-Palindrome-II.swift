//
//  Valid-Palindrome-II.swift
//  
//
//  Created by Vyacheslav Pronin on 17.10.2022.
//

import Foundation

class Solution {
    func validPalindrome(_ s: String) -> Bool {
        var firstIndex = s.startIndex
        var lastIndex = s.index(before: s.endIndex)
        
        while firstIndex < lastIndex {
            if s[firstIndex] != s[lastIndex] {
                if isPalindrome(str: s, first: s.index(after: firstIndex), last: lastIndex) ||
                    isPalindrome(str: s, first: firstIndex, last: s.index(before: lastIndex)) {
                    return true
                } else {
                    return false
                }
            }
            
            firstIndex = s.index(after: firstIndex)
            lastIndex = s.index(before: lastIndex)
        }
        
        return true
    }
    
    func isPalindrome(str: String, first: String.Index, last: String.Index) -> Bool {
        var first = first
        var last = last
        
        while first < last {
            if str[first] != str[last] {
                return false
            }
            
            first = str.index(after: first)
            last = str.index(before: last)
        }
        
        return true
    }
}
