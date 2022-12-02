//
//  Determine-if-Two-Strings-Are-Close.swift
//  
//
//  Created by Vyacheslav Pronin on 02.12.2022.
//

import Foundation

class Solution {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        let w1 = Array(word1), w2 = Array(word2)
        if word1.count != word2.count{
            return false
        }
        var dict1 : [Character:Int] = [:], dict2 : [Character:Int] = [:]
        for i in 0..<word1.count{
            dict1[w1[i],default:0] += 1
            dict2[w2[i],default:0] += 1
        }
        if dict1.keys != dict2.keys || dict1.values.sorted() != dict2.values.sorted(){
            return false
        }
        return true
    }
}
