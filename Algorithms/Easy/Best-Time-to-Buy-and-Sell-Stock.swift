//
//  Best-Time-to-Buy-and-Sell-Stock.swift
//  
//
//  Created by Vyacheslav Pronin on 16.10.2022.
//

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var min: Int?
        var max: Int?
        var result = 0
        
        for elem in prices {
            if min == nil || min! > elem {
                min = elem
                max = nil
            } else if max == nil || max! < elem {
                max = elem
                result = max! - min! > result ? max! - min! : result
            }
        }
        return result
    }
}
