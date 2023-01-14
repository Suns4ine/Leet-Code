//
//  Verifying-an-Alien-Dictionary.swift
//  
//
//  Created by Vyacheslav Pronin on 15.01.2023.
//

import Foundation

class Solution {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        guard words.count > 1 else { return true }
        var words = words.map{ Array($0) }
        var dict: [Character: Int] = [:]
        var i = 1
        for char in order {
            dict[char] = i
            i += 1
        }
        
        for i in 1..<words.count {
            
            for j in 0..<words[i - 1].count {
                guard j < words[i].count else { return false }
                
                if dict[words[i - 1][j]]! == dict[words[i][j]]! {
                    continue
                } else if dict[words[i - 1][j]]! < dict[words[i][j]]! {
                    break
                } else {
                    return false
                }
            }
        }
        
        return true
    }
}
