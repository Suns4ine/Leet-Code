//
//  Unique-Number-of-Occurrences.swift
//  
//
//  Created by Vyacheslav Pronin on 16.10.2022.
//

import Foundation

class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var set = Set<Int>()
        var dict: [Int: Int] = [:]
        
        for elem in arr {
            if dict[elem] == nil {
                dict[elem] = 0
            }
            dict[elem]! += 1
        }
        
        for key in dict.keys {
            if set.contains(dict[key]!) {
                return false
            }
            set.insert(dict[key]!)
        }
        
        return true
    }
}
