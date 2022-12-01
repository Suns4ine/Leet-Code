//
//  Determine-if-String-Halves-Are-Alike.swift
//  
//
//  Created by Vyacheslav Pronin on 01.12.2022.
//

import Foundation

class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        let set = Set<String.Element>(arrayLiteral: "a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
        var result = 0
        var s = Array(s)
        var left = 0
        var right = s.count - 1
        
        while left < right {
            result += set.contains(s[left]) ? 1 : 0
            result -= set.contains(s[right]) ? 1 : 0
            
            left += 1
            right -= 1
        }
        
        return result == 0
    }
}
