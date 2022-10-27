//
//  Minimum-Cost-of-Buying-Candies-With-Discount.swift
//  
//
//  Created by Vyacheslav Pronin on 27.10.2022.
//

import Foundation

class Solution {
    func minimumCost(_ cost: [Int]) -> Int {
        guard !cost.isEmpty else { return 0 }
        var cost = cost.sorted(by: >)
        var result = 0
        var count = 0
        
        for elem in cost {
            result = count < 2 ? result + elem : result
            count = count < 2 ? count + 1 : 0
            
        }
        
        return result
    }
}
