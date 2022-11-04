//
//  Reverse-Vowels-of-a-String.swift
//  
//
//  Created by Vyacheslav Pronin on 04.11.2022.
//

import Foundation

class Solution {
    func reverseVowels(_ s: String) -> String {
        var s = Array(s)
        var firstIndex = 0
        var lastIndex = s.count - 1
        var set: Set<String.Element> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        
        
        while firstIndex < lastIndex {
            if set.contains(s[firstIndex]) {
                while lastIndex > firstIndex && !set.contains(s[lastIndex]) {
                    lastIndex -= 1
                }
                
                if lastIndex > firstIndex {
                    (s[firstIndex], s[lastIndex]) = (s[lastIndex], s[firstIndex])
                    lastIndex -= 1
                }
            }
            
            firstIndex += 1
            
        }
        
        return String(s)
    }
}
