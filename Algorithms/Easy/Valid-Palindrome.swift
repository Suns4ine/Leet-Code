//
//  Valid-Palindrome.swift
//  
//
//  Created by Vyacheslav Pronin on 18.10.2022.
//

import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let s = Array(s)
        var firstIndex = 0
        var lastIndex = s.count - 1
        
        while firstIndex < lastIndex {
            while firstIndex < s.count &&
                    !(("0"..."9").contains(s[firstIndex]) ||
                      ("a"..."z").contains(s[firstIndex].lowercased())) {
                firstIndex += 1
            }
            
            while lastIndex >= 0 &&
                    !(("0"..."9").contains(s[lastIndex]) ||
                      ("a"..."z").contains(s[lastIndex].lowercased()))   {
                lastIndex -= 1
            }
            guard firstIndex < lastIndex else { break }
            guard s[firstIndex].lowercased() == s[lastIndex].lowercased()  else { return false }
            
            firstIndex += 1
            lastIndex -= 1
        }
        
        return true
    }
}
