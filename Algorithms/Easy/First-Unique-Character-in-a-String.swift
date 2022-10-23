//
//  First-Unique-Character-in-a-String.swift
//  
//
//  Created by Vyacheslav Pronin on 22.10.2022.
//

import Foundation

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dict: [Character: (index: Int, count: Int)] = [:]
        var res = s.count + 1
        
        for (index, char) in s.enumerated() {
            if let closure = dict[char] {
                dict[char] = (index: index, count: closure.count + 1)
            } else {
                dict[char] = (index: index, count: 1)
            }
        }
        
        for key in dict.keys {
            res = dict[key]!.count == 1 && dict[key]!.index < res ? dict[key]!.index : res
        }
        
        return res == s.count + 1 ? -1 : res
    }
}
