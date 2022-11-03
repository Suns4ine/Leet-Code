//
//  Longest-Common-Prefix.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2021.
//

import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty else { return "" }
        var result = strs[0]
        
        for str in strs {
            guard !result.isEmpty else { break }
            if !str.hasPrefix(result) {
                while !result.isEmpty && !str.hasPrefix(result) {
                    result.removeLast()
                }
            }
        }
        
        return result
    }
}
