//
//  Longest-Common-Prefix.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2021.
//

import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
    var result = ""
    let strs = strs.sorted()
    let first = Array(strs.first ?? "")
    let last = Array(strs.last ?? "")

    if first.count - 1 >= 0 {
        for i in 0...first.count - 1 {
            if first[i] != last[i] {
                return result
            }
            result += String(first[i])
        }
    }
    return result
    }
}
