//
//  Check-if-One-String-Swap-Can-Make-Strings-Equal.swift
//  
//
//  Created by Vyacheslav Pronin on 04.11.2022.
//

import Foundation

class Solution {
    func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
        var arr: [(String.Element, String.Element)] = []
        var s1 = Array(s1)
        var s2 = Array(s2)
        var index = 0
        
        while index < s1.count {
            if s1[index] != s2[index] {
                
                switch arr.count {
                case 0:
                    arr.append((s1[index], s2[index]))
                case 1:
                    guard arr[0].0 == s2[index] && arr[0].1 == s1[index] else { return false }
                    arr.append((s1[index], s2[index]))
                default:
                    return false
                }
            }
            
            index += 1
        }
        
        return arr.count == 2 || arr.count == 0
    }
}
