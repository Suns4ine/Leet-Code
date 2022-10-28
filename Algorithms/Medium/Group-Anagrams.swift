//
//  Group-Anagrams.swift
//  
//
//  Created by Vyacheslav Pronin on 28.10.2022.
//

import Foundation

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result = [[String]]()
        var dict: [String : [String]] = [:]
        
        for value in strs {
            dict[String(value.sorted()), default: []].append(value)
        }
        
        for value in dict {
            result.append(value.value)
        }
        
        return result
    }
}
