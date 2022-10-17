//
//  Happy-Number.swift
//  
//
//  Created by Vyacheslav Pronin on 17.10.2022.
//

import Foundation

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var set = Set<Int>()
        var n = n
        
        while n != 1 {
            var count = 0
            
            while n > 0 {
                let i = n % 10
                n = n/10
                count += (i * i)
            }
            
            if set.contains(count) {
                return false
            }
            
            set.insert(count)
            n = count
        }
        return true
    }
}
