//
//  Reverse-String-II.swift
//  
//
//  Created by Vyacheslav Pronin on 17.10.2022.
//

import Foundation

class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
        var s = Array(s)
        var index = 0
        
        while index < s.count {
            var i = index
            var j = min(index + k - 1, s.count - 1);
            
            while i < j {
                s.swapAt(i, j)
                i += 1
                j -= 1
            }
            
            index = index + (2 * k)
        }
        return String(s)
    }
}
