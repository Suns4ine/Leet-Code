//
//  Valid-Anagram.swift
//  
//
//  Created by Vyacheslav Pronin on 16.10.2022.
//

import Foundation

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var dict: [String.Element : Int] = [:]
        let s = Array(s)
        let t = Array(t)
        
        for index in 0..<s.count {
            if s[index] == t[index] { continue }
            dict[s[index], default: 0] += 1
            dict[t[index], default: 0] -= 1
        }
        
        return  dict.keys.reduce(into: 0) { $0 += abs(dict[$1]!) } == 0
    }
}
