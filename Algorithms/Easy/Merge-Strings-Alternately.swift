//
//  Merge-Strings-Alternately.swift
//  
//
//  Created by Vyacheslav Pronin on 09.11.2022.
//

import Foundation

class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var result = [String.Element]()
        var word1 = Array(word1)
        var word2 = Array(word2)
        var index = 0
        
        while index < word1.count && index < word2.count {
            result.append(word1[index])
            result.append(word2[index])
            
            index += 1
        }
        
        while index < word1.count {
            result.append(word1[index])
            index += 1
        }
        
        while index < word2.count {
            result.append(word2[index])
            index += 1
        }
        
        return String(result)
    }
}
