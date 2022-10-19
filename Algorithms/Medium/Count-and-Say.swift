//
//  Count-and-Say.swift
//  
//
//  Created by Vyacheslav Pronin on 18.10.2022.
//

import Foundation

class Solution {
    func countAndSay(_ n: Int) -> String {
        guard n > 1 && n <= 30 else { return "1" }
        let prev = countAndSay(n - 1)
        
        guard var curr = prev.first else { return prev }
        var count = 0
        var result = ""
        
        for elem in prev {
            if elem != curr {
                result += "\(count)\(curr)"
                count = 1
                curr = elem
            } else {
                count += 1
            }
        }
        
        result += "\(count)\(curr)"
        return result
    }
}
