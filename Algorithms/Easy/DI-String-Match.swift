//
//  DI-String-Match.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2022.
//

import Foundation

class Solution {
    func diStringMatch(_ s: String) -> [Int] {
        var arr = [Int]()
        var low = 0
        var high = s.count
        
        for char in s {
            if char == "I" {
                arr.append(low)
                low += 1
            } else {
                arr.append(high)
                high -= 1
            }
        }
        
        arr.append(low)
        return arr
    }
}
