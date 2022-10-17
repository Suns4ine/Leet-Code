//
//  Assign-Cookies.swift
//  
//
//  Created by Vyacheslav Pronin on 17.10.2022.
//

import Foundation

class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let g = g.sorted()
        let s = s.sorted()
        var result = 0
        
        var gIndex = g.count - 1
        var sIndex = s.count - 1
        
        while sIndex >= 0 {
            guard gIndex >= 0 else { break }
            gIndex = s[sIndex] < g[gIndex] ? isIndex(g, numb: s[sIndex]) : gIndex
            
            if s[sIndex] >= g[gIndex] {
                result += 1
                gIndex -= 1
            }
            
            sIndex -= 1
            
        }
        
        return result
    }
    
    func isIndex(_ array: [Int], numb: Int) -> Int {
        guard !array.isEmpty else { return 0 }
        var left = 0
        var right = array.count - 1
        
        while left <= right {
            let index = (left + right) / 2
            
            if array[index] > numb {
                right = index - 1
            } else {
                left = index + 1
            }
        }
        
        return right < 0 ? 0 : right
    }
}
