//
//  Sort-Characters-By-Frequency.swift
//  
//
//  Created by Vyacheslav Pronin on 03.12.2022.
//

import Foundation

class Solution {
    func frequencySort(_ s: String) -> String {
        var dict : [Character:Int] = [:]
        
        for ch in s {
            if dict[ch] == nil {
                dict[ch] = 1
            } else {
                dict[ch]! += 1
            }
        }
        
        let ar = dict.sorted(by: { $0.1 > $1.1 } )
        var res = ""
        
        for i in 0..<ar.count {
            var c = 0
            while(c < ar[i].value) {
                res.append(ar[i].key)
                c += 1
            }
        }
        return res
    }
}
