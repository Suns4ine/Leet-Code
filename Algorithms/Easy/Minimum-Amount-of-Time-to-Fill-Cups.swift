//
//  Minimum-Amount-of-Time-to-Fill-Cups.swift
//  
//
//  Created by Vyacheslav Pronin on 28.10.2022.
//

import Foundation

class Solution {
    func fillCups(_ amount: [Int]) -> Int {
        let array = amount.sorted()
        
        if array[0] + array[1] <= array[2] {
            return array[2]
        } else {
            var diff = array[0] + array[1] - array[2]
            diff = diff % 2 == 0 ? diff / 2 : (diff / 2) + 1
            return array[2] + diff
        }
    }
}
