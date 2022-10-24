//
//  Minimum-Cost-to-Move-Chips-to-The-Same-Position.swift
//  
//
//  Created by Vyacheslav Pronin on 24.10.2022.
//

import Foundation

class Solution {
    func minCostToMoveChips(_ position: [Int]) -> Int {
        var onePosition = 0
        var twoPosition = 0
        
        for numb in position {
            if numb % 2 == 0 {
                twoPosition += 1
            } else {
                onePosition += 1
            }
        }
        
        return min(onePosition, twoPosition)
    }
}
