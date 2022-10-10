//
//  Reverse-Words-in-a-String-III.swift
//  
//
//  Created by Vyacheslav Pronin on 10.10.2022.
//

import Foundation

class Solution {
    func reverseWords(_ s: String) -> String {
        guard s.count > 1 else { return s }
        let s = Array(s)
        var arr = [Character]()
        var index = 0
        
        while index < s.count - 1 {
            var countWord = 0
            var endWordIndex = 0
            
            while index < s.count - 1 && s[index] == " " {
                arr.append(" ")
                index += 1
            }
            
            while index < s.count - 1 && s[index] != " " {
                countWord += 1
                index += 1
            }
            
            endWordIndex = s[index] == " " ? index - 1 : index
            countWord = s[index] != " " && index == s.count - 1 ? countWord + 1 : countWord
            while countWord > 0 {
                arr.append(s[endWordIndex])
                endWordIndex -= 1
                countWord -= 1
            }
        }
        
        if index == s.count - 1 && s[index] == " " {
            arr.append(" ")
        }
        
        return String(arr)
    }
}
