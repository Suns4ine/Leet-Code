//
//  Is-Subsequence.swift
//  
//
//  Created by Vyacheslav Pronin on 17.10.2022.
//

import Foundation

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        guard s.count <= t.count else { return false }
        let s = Array(s)
        let t = Array(t)
        var leftIndex = 0
        
        for index in 0..<t.count {
            guard leftIndex != s.count else { return true }
            
            if s[leftIndex] == t[index] {
                leftIndex += 1
            }
        }
        
        return leftIndex == s.count
    }
}
