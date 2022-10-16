//
//  Palindrome Number.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2021.
//

import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        let str = String(x)
        var startIndex = str.startIndex
        var endIndex = str.index(before: str.endIndex)
        
        while startIndex < endIndex {
            if str[startIndex] != str[endIndex] {
                return false
            }
            startIndex = str.index(after: startIndex)
            endIndex = str.index(before: endIndex)
        }
        return true
    }
}
