//
//  Reverse-Words-in-a-String.swift
//  
//
//  Created by Vyacheslav Pronin on 13.11.2022.
//

import Foundation

class Solution {
    func reverseWords(_ s: String) -> String {
        var s = Array(s.trimmingCharacters(in: .whitespaces))
        var index = s.count - 1
        var result = [String.Element]()
        
        while index >= 0 {
            var count = 0
            
            while index >= 0 && s[index] == " " {
                index -= 1
            }
            
            while index >= 0 && s[index] != " " {
                count += 1
                index -= 1
            }
            
            var stateIndex = index + 1
            count = count + index + 1
            
            while stateIndex < count {
                result.append(s[stateIndex])
                stateIndex += 1
            }
            if index > 0 {
                result.append(" ")
            }
        }
        
        return String(result)
    }
}
