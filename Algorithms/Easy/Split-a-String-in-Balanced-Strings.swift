//
//  Split-a-String-in-Balanced-Strings.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2022.
//

import Foundation

class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        var result = 0
        var count = 0
        
        for elem in s {
            if elem == "L" {
                count += 1
            } else {
                count -= 1
            }
            
            if count == 0 {
                result += 1
            }
        }
        
        return result
    }
}
